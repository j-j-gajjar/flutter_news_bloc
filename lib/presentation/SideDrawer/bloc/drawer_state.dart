part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState.initial() = _Initial;
  const factory DrawerState.loaded({
    required List<SideDrawerModel> sideDrawer,
    @Default("") String category,
    @Default("") String country,
    @Default("") String sources,
  }) = _Loaded;
}
