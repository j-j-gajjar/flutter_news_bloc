part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.started() = Started;
  const factory DrawerEvent.filterData(String category, String value) = FilterData;
}
