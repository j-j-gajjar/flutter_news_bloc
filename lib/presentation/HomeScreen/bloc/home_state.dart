part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initialState({
    required bool isLoading,
  }) = _Initial;
  const factory HomeState.allNewsState({
    required List<Article> articles,
    required bool isLoading,
    @Default(false) bool isLast,
  }) = _AllNews;
  const factory HomeState.errorState({required String errorMessage}) = _ErrorState;
}
