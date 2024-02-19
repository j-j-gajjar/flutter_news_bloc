import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/domain/api/api_provider.dart';
import 'package:flutter_news_bloc/domain/model/news_request.dart';
import 'package:flutter_news_bloc/domain/model/news_res.dart';
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
  }

  NewsRequest _newsRequest = const NewsRequest(
    apiKey: "58b98b48d2c74d9c94dd5dc296ccf7b6",
    page: 1,
    pageSize: 10,
  );

  final ApiProvider _apiProvider;

  _fetchAllNews(event, emit) async {
    try {
      NewsResponse newsResponse = await _apiProvider.getNews(_newsRequest.toJson());
      // _pageNum = _pageNum + 1;
      _newsRequest = _newsRequest.copyWith(page: _newsRequest.page + 1);
      debugPrint(newsResponse.articles.length.toString());
      if (newsResponse.articles.isNotEmpty) {
        emit(HomeState.allNewsState(articles: newsResponse.articles, isLoading: false));
      }
    } catch (e) {
      emit(HomeState.errorState(errorMessage: e.toString()));
    }
  }

  _pagination(event, emit) async {
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
}
