part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchAllNews() = FetchAllNews;
  const factory HomeEvent.paginate(BuildContext context) = Paginate;
  const factory HomeEvent.like(int index) = Like;
}
