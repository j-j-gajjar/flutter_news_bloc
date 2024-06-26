// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initialState,
    required TResult Function(
            List<Article> articles, bool isLoading, bool isLast)
        allNewsState,
    required TResult Function(String errorMessage) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initialState,
    TResult? Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult? Function(String errorMessage)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initialState,
    TResult Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initialState,
    required TResult Function(_AllNews value) allNewsState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initialState,
    TResult? Function(_AllNews value)? allNewsState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initialState,
    TResult Function(_AllNews value)? allNewsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomeState.initialState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initialState,
    required TResult Function(
            List<Article> articles, bool isLoading, bool isLast)
        allNewsState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return initialState(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initialState,
    TResult? Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return initialState?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initialState,
    TResult Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initialState,
    required TResult Function(_AllNews value) allNewsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initialState,
    TResult? Function(_AllNews value)? allNewsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initialState,
    TResult Function(_AllNews value)? allNewsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial({required final bool isLoading}) = _$InitialImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllNewsImplCopyWith<$Res> {
  factory _$$AllNewsImplCopyWith(
          _$AllNewsImpl value, $Res Function(_$AllNewsImpl) then) =
      __$$AllNewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles, bool isLoading, bool isLast});
}

/// @nodoc
class __$$AllNewsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$AllNewsImpl>
    implements _$$AllNewsImplCopyWith<$Res> {
  __$$AllNewsImplCopyWithImpl(
      _$AllNewsImpl _value, $Res Function(_$AllNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? isLoading = null,
    Object? isLast = null,
  }) {
    return _then(_$AllNewsImpl(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AllNewsImpl implements _AllNews {
  const _$AllNewsImpl(
      {required final List<Article> articles,
      required this.isLoading,
      this.isLast = false})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLast;

  @override
  String toString() {
    return 'HomeState.allNewsState(articles: $articles, isLoading: $isLoading, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllNewsImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_articles), isLoading, isLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllNewsImplCopyWith<_$AllNewsImpl> get copyWith =>
      __$$AllNewsImplCopyWithImpl<_$AllNewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initialState,
    required TResult Function(
            List<Article> articles, bool isLoading, bool isLast)
        allNewsState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return allNewsState(articles, isLoading, isLast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initialState,
    TResult? Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return allNewsState?.call(articles, isLoading, isLast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initialState,
    TResult Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (allNewsState != null) {
      return allNewsState(articles, isLoading, isLast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initialState,
    required TResult Function(_AllNews value) allNewsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return allNewsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initialState,
    TResult? Function(_AllNews value)? allNewsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return allNewsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initialState,
    TResult Function(_AllNews value)? allNewsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (allNewsState != null) {
      return allNewsState(this);
    }
    return orElse();
  }
}

abstract class _AllNews implements HomeState {
  const factory _AllNews(
      {required final List<Article> articles,
      required final bool isLoading,
      final bool isLast}) = _$AllNewsImpl;

  List<Article> get articles;
  bool get isLoading;
  bool get isLast;
  @JsonKey(ignore: true)
  _$$AllNewsImplCopyWith<_$AllNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState.errorState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initialState,
    required TResult Function(
            List<Article> articles, bool isLoading, bool isLast)
        allNewsState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return errorState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initialState,
    TResult? Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return errorState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initialState,
    TResult Function(List<Article> articles, bool isLoading, bool isLast)?
        allNewsState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initialState,
    required TResult Function(_AllNews value) allNewsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initialState,
    TResult? Function(_AllNews value)? allNewsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initialState,
    TResult Function(_AllNews value)? allNewsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements HomeState {
  const factory _ErrorState({required final String errorMessage}) =
      _$ErrorStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllNews,
    required TResult Function(BuildContext context) paginate,
    required TResult Function(int index) like,
    required TResult Function(String category, String value) filterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllNews,
    TResult? Function(BuildContext context)? paginate,
    TResult? Function(int index)? like,
    TResult? Function(String category, String value)? filterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllNews,
    TResult Function(BuildContext context)? paginate,
    TResult Function(int index)? like,
    TResult Function(String category, String value)? filterData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllNews value) fetchAllNews,
    required TResult Function(Paginate value) paginate,
    required TResult Function(Like value) like,
    required TResult Function(FilterData value) filterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllNews value)? fetchAllNews,
    TResult? Function(Paginate value)? paginate,
    TResult? Function(Like value)? like,
    TResult? Function(FilterData value)? filterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllNews value)? fetchAllNews,
    TResult Function(Paginate value)? paginate,
    TResult Function(Like value)? like,
    TResult Function(FilterData value)? filterData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllNewsImplCopyWith<$Res> {
  factory _$$FetchAllNewsImplCopyWith(
          _$FetchAllNewsImpl value, $Res Function(_$FetchAllNewsImpl) then) =
      __$$FetchAllNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllNewsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchAllNewsImpl>
    implements _$$FetchAllNewsImplCopyWith<$Res> {
  __$$FetchAllNewsImplCopyWithImpl(
      _$FetchAllNewsImpl _value, $Res Function(_$FetchAllNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllNewsImpl implements FetchAllNews {
  const _$FetchAllNewsImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchAllNews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllNews,
    required TResult Function(BuildContext context) paginate,
    required TResult Function(int index) like,
    required TResult Function(String category, String value) filterData,
  }) {
    return fetchAllNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllNews,
    TResult? Function(BuildContext context)? paginate,
    TResult? Function(int index)? like,
    TResult? Function(String category, String value)? filterData,
  }) {
    return fetchAllNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllNews,
    TResult Function(BuildContext context)? paginate,
    TResult Function(int index)? like,
    TResult Function(String category, String value)? filterData,
    required TResult orElse(),
  }) {
    if (fetchAllNews != null) {
      return fetchAllNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllNews value) fetchAllNews,
    required TResult Function(Paginate value) paginate,
    required TResult Function(Like value) like,
    required TResult Function(FilterData value) filterData,
  }) {
    return fetchAllNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllNews value)? fetchAllNews,
    TResult? Function(Paginate value)? paginate,
    TResult? Function(Like value)? like,
    TResult? Function(FilterData value)? filterData,
  }) {
    return fetchAllNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllNews value)? fetchAllNews,
    TResult Function(Paginate value)? paginate,
    TResult Function(Like value)? like,
    TResult Function(FilterData value)? filterData,
    required TResult orElse(),
  }) {
    if (fetchAllNews != null) {
      return fetchAllNews(this);
    }
    return orElse();
  }
}

abstract class FetchAllNews implements HomeEvent {
  const factory FetchAllNews() = _$FetchAllNewsImpl;
}

/// @nodoc
abstract class _$$PaginateImplCopyWith<$Res> {
  factory _$$PaginateImplCopyWith(
          _$PaginateImpl value, $Res Function(_$PaginateImpl) then) =
      __$$PaginateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$PaginateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PaginateImpl>
    implements _$$PaginateImplCopyWith<$Res> {
  __$$PaginateImplCopyWithImpl(
      _$PaginateImpl _value, $Res Function(_$PaginateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$PaginateImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$PaginateImpl implements Paginate {
  const _$PaginateImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeEvent.paginate(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateImplCopyWith<_$PaginateImpl> get copyWith =>
      __$$PaginateImplCopyWithImpl<_$PaginateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllNews,
    required TResult Function(BuildContext context) paginate,
    required TResult Function(int index) like,
    required TResult Function(String category, String value) filterData,
  }) {
    return paginate(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllNews,
    TResult? Function(BuildContext context)? paginate,
    TResult? Function(int index)? like,
    TResult? Function(String category, String value)? filterData,
  }) {
    return paginate?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllNews,
    TResult Function(BuildContext context)? paginate,
    TResult Function(int index)? like,
    TResult Function(String category, String value)? filterData,
    required TResult orElse(),
  }) {
    if (paginate != null) {
      return paginate(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllNews value) fetchAllNews,
    required TResult Function(Paginate value) paginate,
    required TResult Function(Like value) like,
    required TResult Function(FilterData value) filterData,
  }) {
    return paginate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllNews value)? fetchAllNews,
    TResult? Function(Paginate value)? paginate,
    TResult? Function(Like value)? like,
    TResult? Function(FilterData value)? filterData,
  }) {
    return paginate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllNews value)? fetchAllNews,
    TResult Function(Paginate value)? paginate,
    TResult Function(Like value)? like,
    TResult Function(FilterData value)? filterData,
    required TResult orElse(),
  }) {
    if (paginate != null) {
      return paginate(this);
    }
    return orElse();
  }
}

abstract class Paginate implements HomeEvent {
  const factory Paginate(final BuildContext context) = _$PaginateImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$PaginateImplCopyWith<_$PaginateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeImplCopyWith<$Res> {
  factory _$$LikeImplCopyWith(
          _$LikeImpl value, $Res Function(_$LikeImpl) then) =
      __$$LikeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$LikeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LikeImpl>
    implements _$$LikeImplCopyWith<$Res> {
  __$$LikeImplCopyWithImpl(_$LikeImpl _value, $Res Function(_$LikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$LikeImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeImpl implements Like {
  const _$LikeImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.like(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      __$$LikeImplCopyWithImpl<_$LikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllNews,
    required TResult Function(BuildContext context) paginate,
    required TResult Function(int index) like,
    required TResult Function(String category, String value) filterData,
  }) {
    return like(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllNews,
    TResult? Function(BuildContext context)? paginate,
    TResult? Function(int index)? like,
    TResult? Function(String category, String value)? filterData,
  }) {
    return like?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllNews,
    TResult Function(BuildContext context)? paginate,
    TResult Function(int index)? like,
    TResult Function(String category, String value)? filterData,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllNews value) fetchAllNews,
    required TResult Function(Paginate value) paginate,
    required TResult Function(Like value) like,
    required TResult Function(FilterData value) filterData,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllNews value)? fetchAllNews,
    TResult? Function(Paginate value)? paginate,
    TResult? Function(Like value)? like,
    TResult? Function(FilterData value)? filterData,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllNews value)? fetchAllNews,
    TResult Function(Paginate value)? paginate,
    TResult Function(Like value)? like,
    TResult Function(FilterData value)? filterData,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class Like implements HomeEvent {
  const factory Like(final int index) = _$LikeImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterDataImplCopyWith<$Res> {
  factory _$$FilterDataImplCopyWith(
          _$FilterDataImpl value, $Res Function(_$FilterDataImpl) then) =
      __$$FilterDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String value});
}

/// @nodoc
class __$$FilterDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FilterDataImpl>
    implements _$$FilterDataImplCopyWith<$Res> {
  __$$FilterDataImplCopyWithImpl(
      _$FilterDataImpl _value, $Res Function(_$FilterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? value = null,
  }) {
    return _then(_$FilterDataImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterDataImpl implements FilterData {
  const _$FilterDataImpl(this.category, this.value);

  @override
  final String category;
  @override
  final String value;

  @override
  String toString() {
    return 'HomeEvent.filterData(category: $category, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterDataImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterDataImplCopyWith<_$FilterDataImpl> get copyWith =>
      __$$FilterDataImplCopyWithImpl<_$FilterDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllNews,
    required TResult Function(BuildContext context) paginate,
    required TResult Function(int index) like,
    required TResult Function(String category, String value) filterData,
  }) {
    return filterData(category, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllNews,
    TResult? Function(BuildContext context)? paginate,
    TResult? Function(int index)? like,
    TResult? Function(String category, String value)? filterData,
  }) {
    return filterData?.call(category, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllNews,
    TResult Function(BuildContext context)? paginate,
    TResult Function(int index)? like,
    TResult Function(String category, String value)? filterData,
    required TResult orElse(),
  }) {
    if (filterData != null) {
      return filterData(category, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllNews value) fetchAllNews,
    required TResult Function(Paginate value) paginate,
    required TResult Function(Like value) like,
    required TResult Function(FilterData value) filterData,
  }) {
    return filterData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllNews value)? fetchAllNews,
    TResult? Function(Paginate value)? paginate,
    TResult? Function(Like value)? like,
    TResult? Function(FilterData value)? filterData,
  }) {
    return filterData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllNews value)? fetchAllNews,
    TResult Function(Paginate value)? paginate,
    TResult Function(Like value)? like,
    TResult Function(FilterData value)? filterData,
    required TResult orElse(),
  }) {
    if (filterData != null) {
      return filterData(this);
    }
    return orElse();
  }
}

abstract class FilterData implements HomeEvent {
  const factory FilterData(final String category, final String value) =
      _$FilterDataImpl;

  String get category;
  String get value;
  @JsonKey(ignore: true)
  _$$FilterDataImplCopyWith<_$FilterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
