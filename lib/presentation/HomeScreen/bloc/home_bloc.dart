import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/domain/api/api_provider.dart';
import 'package:flutter_news_bloc/domain/model/news_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._apiProvider) : super(const HomeState.initial(isLoading: true)) {
    on<FetchAllNews>(_fetchAllNews);
    on<Paginate>(_pagination);
  }

  final int _pageSize = 10;
  int _pageNum = 1;
  final String _apiKey = "58b98b48d2c74d9c94dd5dc296ccf7b6";
  final ApiProvider _apiProvider;

  _fetchAllNews(event, emit) async {
    NewsResponse newsResponse = await _apiProvider.getNews({"apiKey": _apiKey, "pageSize": _pageSize, "page": _pageNum});
    _pageNum = _pageNum + 1;
    debugPrint(newsResponse.articles.length.toString());
    if (newsResponse.articles.isNotEmpty) {
      emit(HomeState.allNews(articles: newsResponse.articles, isLoading: false));
    }
  }

  _pagination(event, emit) async {
    emit(state.copyWith(isLoading: true));

    NewsResponse newsResponse = await _apiProvider.getNews({
      "apiKey": _apiKey,
      "pageSize": _pageSize,
      "page": _pageNum,
    });

    _pageNum = _pageNum + 1;

    if (newsResponse.articles.isNotEmpty) {
      // Access articles using state.articles
      List<Article> combinedArticles = List.of((state as _AllNews).articles)..addAll(newsResponse.articles);
      emit(HomeState.allNews(articles: combinedArticles, isLoading: false));
    }
  }
}
