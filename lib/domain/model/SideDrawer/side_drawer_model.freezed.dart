// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'side_drawer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SideDrawerModel _$SideDrawerModelFromJson(Map<String, dynamic> json) {
  return _SideDrawerModel.fromJson(json);
}

/// @nodoc
mixin _$SideDrawerModel {
  String get title => throw _privateConstructorUsedError;
  List<ListElement> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideDrawerModelCopyWith<SideDrawerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideDrawerModelCopyWith<$Res> {
  factory $SideDrawerModelCopyWith(
          SideDrawerModel value, $Res Function(SideDrawerModel) then) =
      _$SideDrawerModelCopyWithImpl<$Res, SideDrawerModel>;
  @useResult
  $Res call({String title, List<ListElement> list});
}

/// @nodoc
class _$SideDrawerModelCopyWithImpl<$Res, $Val extends SideDrawerModel>
    implements $SideDrawerModelCopyWith<$Res> {
  _$SideDrawerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SideDrawerModelImplCopyWith<$Res>
    implements $SideDrawerModelCopyWith<$Res> {
  factory _$$SideDrawerModelImplCopyWith(_$SideDrawerModelImpl value,
          $Res Function(_$SideDrawerModelImpl) then) =
      __$$SideDrawerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<ListElement> list});
}

/// @nodoc
class __$$SideDrawerModelImplCopyWithImpl<$Res>
    extends _$SideDrawerModelCopyWithImpl<$Res, _$SideDrawerModelImpl>
    implements _$$SideDrawerModelImplCopyWith<$Res> {
  __$$SideDrawerModelImplCopyWithImpl(
      _$SideDrawerModelImpl _value, $Res Function(_$SideDrawerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? list = null,
  }) {
    return _then(_$SideDrawerModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SideDrawerModelImpl implements _SideDrawerModel {
  const _$SideDrawerModelImpl(
      {required this.title, required final List<ListElement> list})
      : _list = list;

  factory _$SideDrawerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SideDrawerModelImplFromJson(json);

  @override
  final String title;
  final List<ListElement> _list;
  @override
  List<ListElement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SideDrawerModel(title: $title, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideDrawerModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SideDrawerModelImplCopyWith<_$SideDrawerModelImpl> get copyWith =>
      __$$SideDrawerModelImplCopyWithImpl<_$SideDrawerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SideDrawerModelImplToJson(
      this,
    );
  }
}

abstract class _SideDrawerModel implements SideDrawerModel {
  const factory _SideDrawerModel(
      {required final String title,
      required final List<ListElement> list}) = _$SideDrawerModelImpl;

  factory _SideDrawerModel.fromJson(Map<String, dynamic> json) =
      _$SideDrawerModelImpl.fromJson;

  @override
  String get title;
  @override
  List<ListElement> get list;
  @override
  @JsonKey(ignore: true)
  _$$SideDrawerModelImplCopyWith<_$SideDrawerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  String get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call({String name, String? code});
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
          _$ListElementImpl value, $Res Function(_$ListElementImpl) then) =
      __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? code});
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
      _$ListElementImpl _value, $Res Function(_$ListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = freezed,
  }) {
    return _then(_$ListElementImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl({required this.name, required this.code});

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  final String name;
  @override
  final String? code;

  @override
  String toString() {
    return 'ListElement(name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
      {required final String name,
      required final String? code}) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  String get name;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
