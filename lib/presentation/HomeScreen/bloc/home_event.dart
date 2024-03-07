part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchAllNews() = FetchAllNews;
  const factory HomeEvent.filterAllNews({
    @Default("") String category,
    @Default("") String country,
    @Default("") String sources,
  }) = FilterAllNews;
  const factory HomeEvent.paginate(BuildContext context) = Paginate;
  const factory HomeEvent.like(int index) = Like;
}
