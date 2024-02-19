// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsRequest _$NewsRequestFromJson(Map<String, dynamic> json) {
  return _NewsRequest.fromJson(json);
}

/// @nodoc
mixin _$NewsRequest {
  String get apiKey => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get q => throw _privateConstructorUsedError;
  String get domains => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsRequestCopyWith<NewsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsRequestCopyWith<$Res> {
  factory $NewsRequestCopyWith(
          NewsRequest value, $Res Function(NewsRequest) then) =
      _$NewsRequestCopyWithImpl<$Res, NewsRequest>;
  @useResult
  $Res call(
      {String apiKey,
      int pageSize,
      int page,
      String country,
      String sortBy,
      String q,
      String domains});
}

/// @nodoc
class _$NewsRequestCopyWithImpl<$Res, $Val extends NewsRequest>
    implements $NewsRequestCopyWith<$Res> {
  _$NewsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? pageSize = null,
    Object? page = null,
    Object? country = null,
    Object? sortBy = null,
    Object? q = null,
    Object? domains = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      domains: null == domains
          ? _value.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsRequestImplCopyWith<$Res>
    implements $NewsRequestCopyWith<$Res> {
  factory _$$NewsRequestImplCopyWith(
          _$NewsRequestImpl value, $Res Function(_$NewsRequestImpl) then) =
      __$$NewsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey,
      int pageSize,
      int page,
      String country,
      String sortBy,
      String q,
      String domains});
}

/// @nodoc
class __$$NewsRequestImplCopyWithImpl<$Res>
    extends _$NewsRequestCopyWithImpl<$Res, _$NewsRequestImpl>
    implements _$$NewsRequestImplCopyWith<$Res> {
  __$$NewsRequestImplCopyWithImpl(
      _$NewsRequestImpl _value, $Res Function(_$NewsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? pageSize = null,
    Object? page = null,
    Object? country = null,
    Object? sortBy = null,
    Object? q = null,
    Object? domains = null,
  }) {
    return _then(_$NewsRequestImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      domains: null == domains
          ? _value.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsRequestImpl implements _NewsRequest {
  const _$NewsRequestImpl(
      {required this.apiKey,
      this.pageSize = 10,
      this.page = 1,
      this.country = "IN",
      this.sortBy = "",
      this.q = "",
      this.domains = ""});

  factory _$NewsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsRequestImplFromJson(json);

  @override
  final String apiKey;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String sortBy;
  @override
  @JsonKey()
  final String q;
  @override
  @JsonKey()
  final String domains;

  @override
  String toString() {
    return 'NewsRequest(apiKey: $apiKey, pageSize: $pageSize, page: $page, country: $country, sortBy: $sortBy, q: $q, domains: $domains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsRequestImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.domains, domains) || other.domains == domains));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, apiKey, pageSize, page, country, sortBy, q, domains);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsRequestImplCopyWith<_$NewsRequestImpl> get copyWith =>
      __$$NewsRequestImplCopyWithImpl<_$NewsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsRequestImplToJson(
      this,
    );
  }
}

abstract class _NewsRequest implements NewsRequest {
  const factory _NewsRequest(
      {required final String apiKey,
      final int pageSize,
      final int page,
      final String country,
      final String sortBy,
      final String q,
      final String domains}) = _$NewsRequestImpl;

  factory _NewsRequest.fromJson(Map<String, dynamic> json) =
      _$NewsRequestImpl.fromJson;

  @override
  String get apiKey;
  @override
  int get pageSize;
  @override
  int get page;
  @override
  String get country;
  @override
  String get sortBy;
  @override
  String get q;
  @override
  String get domains;
  @override
  @JsonKey(ignore: true)
  _$$NewsRequestImplCopyWith<_$NewsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
