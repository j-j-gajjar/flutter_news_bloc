import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/domain/api/api_provider.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._apiProvider) : super(const HomeState.initialState(isLoading: true)) {
    on<FetchAllNews>(_fetchAllNews);
    on<Paginate>(_pagination);
    on<Like>(_onLike);
    on<FilterData>(_filterData);
  }

  NewsRequest _newsRequest = const NewsRequest(
    apiKey: "58b98b48d2c74d9c94dd5dc296ccf7b6",
    page: 1,
    pageSize: 10,
  );

  final ApiProvider _apiProvider;

  void _fetchAllNews(event, emit) async {
    try {
      NewsResponse newsResponse = await _apiProvider.getNews(_newsRequest.toJson());
      _newsRequest = _newsRequest.copyWith(page: _newsRequest.page + 1);
      debugPrint(newsResponse.articles.length.toString());
      if (newsResponse.articles.isNotEmpty) {
        emit(HomeState.allNewsState(articles: newsResponse.articles, isLoading: false));
      }
    } catch (e) {
      emit(HomeState.errorState(errorMessage: e.toString()));
    }
  }

  void _pagination(event, emit) async {
    if ((state as _AllNews).isLoading) return;
    emit((state as _AllNews).copyWith(isLoading: true));
    try {
      NewsResponse newsResponse = await _apiProvider.getNews(_newsRequest.toJson());

      _newsRequest = _newsRequest.copyWith(page: _newsRequest.page + 1);

      if (newsResponse.articles.isNotEmpty) {
        // Access articles using state.articles
        List<Article> combinedArticles = List.of((state as _AllNews).articles)..addAll(newsResponse.articles);
        emit(HomeState.allNewsState(articles: combinedArticles, isLoading: false));
      } else {
        // need to show toeast message (you catch up all news)
        emit((state as _AllNews).copyWith(isLoading: false, isLast: true));
      }
    } catch (e) {
      emit(HomeState.errorState(errorMessage: e.toString()));
    }
  }

  void _onLike(Like event, Emitter<HomeState> emit) {
    List<Article> articles = (state as _AllNews).articles.asMap().entries.map((i) {
      if (event.index == i.key) {
        return i.value.copyWith(isLiked: !i.value.isLiked);
      } else {
        return i.value;
      }
    }).toList();
    emit((state as _AllNews).copyWith(articles: articles, isLast: false));
  }

  _filterNews(Map<String, String> event, Emitter<HomeState> emit) async {
    // Check if the current state is _AllNews and is loading, then return early
    if (state is _AllNews && (state as _AllNews).isLoading) return;

    // Emit the initial loading state
    emit(const HomeState.initialState(isLoading: true));

    try {
      // Copy the news request with new parameters from the event
      _newsRequest = _newsRequest.copyWith(page: 1, category: event['category']!, country: event['country']!, sources: event['sources']!);

      // Await the asynchronous API call to get the news
      NewsResponse newsResponse = await _apiProvider.getNews(_newsRequest.toJson());

      // Update the news request to the next page
      _newsRequest = _newsRequest.copyWith(page: _newsRequest.page + 1);

      // Print the number of articles for debugging purposes
      debugPrint(newsResponse.articles.length.toString());

      // Check if there are any articles in the response
      if (newsResponse.articles.isNotEmpty) {
        // Emit the new state with the articles and loading set to false
        emit(HomeState.allNewsState(articles: newsResponse.articles, isLoading: false));
      }
    } catch (e) {
      // Log the error and emit the error state with the error message
      emit(HomeState.errorState(errorMessage: e.toString()));
    }
  }

  _filterData(FilterData event, Emitter<HomeState> emit) async {
    switch (event.category) {
      case 'country':
        await _filterNews({"country": event.value, "category": '', "sources": ''}, emit);
        break;
      case 'Category':
        await _filterNews({"country": '', "category": event.value, "sources": ''}, emit);
        break;
      case 'Channel':
        await _filterNews({"country": '', "category": '', "sources": event.value}, emit);
        break;
    }
  }
}
