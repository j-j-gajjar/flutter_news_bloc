part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required bool isLoading,
  }) = _Initial;
  const factory HomeState.allNews({
    required List<Article> articles,
    required bool isLoading,
  }) = _AllNews;
}
