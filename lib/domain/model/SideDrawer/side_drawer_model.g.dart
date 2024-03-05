// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SideDrawerModelImpl _$$SideDrawerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SideDrawerModelImpl(
      title: json['title'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SideDrawerModelImplToJson(
        _$SideDrawerModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'list': instance.list,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      name: json['name'] as String,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };
