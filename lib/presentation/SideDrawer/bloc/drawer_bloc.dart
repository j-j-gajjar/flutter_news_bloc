import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:injectable/injectable.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';
part 'drawer_bloc.freezed.dart';

@injectable
class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const _Initial()) {
    on<Started>(_startedEvent);
    on<FilterData>(_filterData);
  }

  FutureOr<void> _startedEvent(Started event, Emitter<DrawerState> emit) async {
    // load json file
    List<SideDrawerModel> data = [];
    final String response = await rootBundle.loadString('assets/static_data/filter.json');
    final dataJson = await json.decode(response);
    data = List<SideDrawerModel>.from(dataJson.map((x) => SideDrawerModel.fromJson(x)));

    emit(_Loaded(sideDrawer: data));
  }

  _filterData(FilterData event, Emitter<DrawerState> emit) {
    if (state is _Loaded) {
      switch (event.category) {
        case 'Countries':
          emit((state as _Loaded).copyWith(country: event.value, category: '', sources: ''));
          break;
        case 'Language':
          emit((state as _Loaded).copyWith(country: '', category: event.value, sources: ''));
          break;
        case 'Channel':
          emit((state as _Loaded).copyWith(country: '', category: '', sources: event.value));
          break;
      }
    }
  }
}
