// To parse this JSON data, do
//
//     final sideDrawerModel = sideDrawerModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'side_drawer_model.freezed.dart';
part 'side_drawer_model.g.dart';

List<SideDrawerModel> sideDrawerModelFromJson(String str) => List<SideDrawerModel>.from(json.decode(str).map((x) => SideDrawerModel.fromJson(x)));

String sideDrawerModelToJson(List<SideDrawerModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SideDrawerModel with _$SideDrawerModel {
  const factory SideDrawerModel({
    required String title,
    required List<ListElement> list,
  }) = _SideDrawerModel;

  factory SideDrawerModel.fromJson(Map<String, dynamic> json) => _$SideDrawerModelFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    required String name,
    required String? code,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);
}
