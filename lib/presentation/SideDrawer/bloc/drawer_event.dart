part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.started() = Started;
  const factory DrawerEvent.filterNews({
    @Default("") String category,
    @Default("") String country,
    @Default("") String sources,
  }) = FilterNews;
}
