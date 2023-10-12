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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  _$LoadingImpl();

  @override
  String toString() {
    return 'HomeEvent.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeEvent {
  factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  _$RefreshImpl();

  @override
  String toString() {
    return 'HomeEvent.refresh()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements HomeEvent {
  factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$FavoriteImplCopyWith<$Res> {
  factory _$$FavoriteImplCopyWith(
          _$FavoriteImpl value, $Res Function(_$FavoriteImpl) then) =
      __$$FavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, bool isSelected});
}

/// @nodoc
class __$$FavoriteImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FavoriteImpl>
    implements _$$FavoriteImplCopyWith<$Res> {
  __$$FavoriteImplCopyWithImpl(
      _$FavoriteImpl _value, $Res Function(_$FavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSelected = null,
  }) {
    return _then(_$FavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoriteImpl implements _Favorite {
  _$FavoriteImpl({required this.id, required this.isSelected});

  @override
  String id;
  @override
  bool isSelected;

  @override
  String toString() {
    return 'HomeEvent.favorite(id: $id, isSelected: $isSelected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      __$$FavoriteImplCopyWithImpl<_$FavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) {
    return favorite(id, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) {
    return favorite?.call(id, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(id, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite implements HomeEvent {
  factory _Favorite({required String id, required bool isSelected}) =
      _$FavoriteImpl;

  String get id;
  set id(String value);
  bool get isSelected;
  set isSelected(bool value);
  @JsonKey(ignore: true)
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadProductsImplCopyWith<$Res> {
  factory _$$LoadProductsImplCopyWith(
          _$LoadProductsImpl value, $Res Function(_$LoadProductsImpl) then) =
      __$$LoadProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProductsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadProductsImpl>
    implements _$$LoadProductsImplCopyWith<$Res> {
  __$$LoadProductsImplCopyWithImpl(
      _$LoadProductsImpl _value, $Res Function(_$LoadProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadProductsImpl implements _LoadProducts {
  _$LoadProductsImpl();

  @override
  String toString() {
    return 'HomeEvent.loadProducts()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadProducts implements HomeEvent {
  factory _LoadProducts() = _$LoadProductsImpl;
}

/// @nodoc
abstract class _$$SearchListImplCopyWith<$Res> {
  factory _$$SearchListImplCopyWith(
          _$SearchListImpl value, $Res Function(_$SearchListImpl) then) =
      __$$SearchListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchListImpl>
    implements _$$SearchListImplCopyWith<$Res> {
  __$$SearchListImplCopyWithImpl(
      _$SearchListImpl _value, $Res Function(_$SearchListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchListImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchListImpl implements _SearchList {
  _$SearchListImpl({this.query});

  @override
  String? query;

  @override
  String toString() {
    return 'HomeEvent.searchList(query: $query)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchListImplCopyWith<_$SearchListImpl> get copyWith =>
      __$$SearchListImplCopyWithImpl<_$SearchListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(String id, bool isSelected) favorite,
    required TResult Function() loadProducts,
    required TResult Function(String? query) searchList,
  }) {
    return searchList(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(String id, bool isSelected)? favorite,
    TResult? Function()? loadProducts,
    TResult? Function(String? query)? searchList,
  }) {
    return searchList?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(String id, bool isSelected)? favorite,
    TResult Function()? loadProducts,
    TResult Function(String? query)? searchList,
    required TResult orElse(),
  }) {
    if (searchList != null) {
      return searchList(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_SearchList value) searchList,
  }) {
    return searchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_SearchList value)? searchList,
  }) {
    return searchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_SearchList value)? searchList,
    required TResult orElse(),
  }) {
    if (searchList != null) {
      return searchList(this);
    }
    return orElse();
  }
}

abstract class _SearchList implements HomeEvent {
  factory _SearchList({String? query}) = _$SearchListImpl;

  String? get query;
  set query(String? value);
  @JsonKey(ignore: true)
  _$$SearchListImplCopyWith<_$SearchListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)
        loadedData,
    required TResult Function(String message) failedLoadingData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult? Function(String message)? failedLoadingData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult Function(String message)? failedLoadingData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedData value) loadedData,
    required TResult Function(_FailedLoadingData value) failedLoadingData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedData value)? loadedData,
    TResult? Function(_FailedLoadingData value)? failedLoadingData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedData value)? loadedData,
    TResult Function(_FailedLoadingData value)? failedLoadingData,
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
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)
        loadedData,
    required TResult Function(String message) failedLoadingData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult? Function(String message)? failedLoadingData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult Function(String message)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedData value) loadedData,
    required TResult Function(_FailedLoadingData value) failedLoadingData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedData value)? loadedData,
    TResult? Function(_FailedLoadingData value)? failedLoadingData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedData value)? loadedData,
    TResult Function(_FailedLoadingData value)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  _$LoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loadingState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)
        loadedData,
    required TResult Function(String message) failedLoadingData,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult? Function(String message)? failedLoadingData,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult Function(String message)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedData value) loadedData,
    required TResult Function(_FailedLoadingData value) failedLoadingData,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedData value)? loadedData,
    TResult? Function(_FailedLoadingData value)? failedLoadingData,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedData value)? loadedData,
    TResult Function(_FailedLoadingData value)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements HomeState {
  factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedDataImplCopyWith<$Res> {
  factory _$$LoadedDataImplCopyWith(
          _$LoadedDataImpl value, $Res Function(_$LoadedDataImpl) then) =
      __$$LoadedDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TOTProduct> products,
      bool? isSearching,
      List<CategoryItem>? categories,
      bool isCategoryLoading});
}

/// @nodoc
class __$$LoadedDataImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedDataImpl>
    implements _$$LoadedDataImplCopyWith<$Res> {
  __$$LoadedDataImplCopyWithImpl(
      _$LoadedDataImpl _value, $Res Function(_$LoadedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? isSearching = freezed,
    Object? categories = freezed,
    Object? isCategoryLoading = null,
  }) {
    return _then(_$LoadedDataImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TOTProduct>,
      isSearching: freezed == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItem>?,
      isCategoryLoading: null == isCategoryLoading
          ? _value.isCategoryLoading
          : isCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedDataImpl implements _LoadedData {
  _$LoadedDataImpl(
      {required this.products,
      this.isSearching,
      this.categories,
      this.isCategoryLoading = true});

  @override
  List<TOTProduct> products;
  @override
  bool? isSearching;
  @override
  List<CategoryItem>? categories;
  @override
  @JsonKey()
  bool isCategoryLoading;

  @override
  String toString() {
    return 'HomeState.loadedData(products: $products, isSearching: $isSearching, categories: $categories, isCategoryLoading: $isCategoryLoading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDataImplCopyWith<_$LoadedDataImpl> get copyWith =>
      __$$LoadedDataImplCopyWithImpl<_$LoadedDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)
        loadedData,
    required TResult Function(String message) failedLoadingData,
  }) {
    return loadedData(products, isSearching, categories, isCategoryLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult? Function(String message)? failedLoadingData,
  }) {
    return loadedData?.call(
        products, isSearching, categories, isCategoryLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult Function(String message)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(products, isSearching, categories, isCategoryLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedData value) loadedData,
    required TResult Function(_FailedLoadingData value) failedLoadingData,
  }) {
    return loadedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedData value)? loadedData,
    TResult? Function(_FailedLoadingData value)? failedLoadingData,
  }) {
    return loadedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedData value)? loadedData,
    TResult Function(_FailedLoadingData value)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(this);
    }
    return orElse();
  }
}

abstract class _LoadedData implements HomeState {
  factory _LoadedData(
      {required List<TOTProduct> products,
      bool? isSearching,
      List<CategoryItem>? categories,
      bool isCategoryLoading}) = _$LoadedDataImpl;

  List<TOTProduct> get products;
  set products(List<TOTProduct> value);
  bool? get isSearching;
  set isSearching(bool? value);
  List<CategoryItem>? get categories;
  set categories(List<CategoryItem>? value);
  bool get isCategoryLoading;
  set isCategoryLoading(bool value);
  @JsonKey(ignore: true)
  _$$LoadedDataImplCopyWith<_$LoadedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedLoadingDataImplCopyWith<$Res> {
  factory _$$FailedLoadingDataImplCopyWith(_$FailedLoadingDataImpl value,
          $Res Function(_$FailedLoadingDataImpl) then) =
      __$$FailedLoadingDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedLoadingDataImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$FailedLoadingDataImpl>
    implements _$$FailedLoadingDataImplCopyWith<$Res> {
  __$$FailedLoadingDataImplCopyWithImpl(_$FailedLoadingDataImpl _value,
      $Res Function(_$FailedLoadingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedLoadingDataImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedLoadingDataImpl implements _FailedLoadingData {
  _$FailedLoadingDataImpl(this.message);

  @override
  String message;

  @override
  String toString() {
    return 'HomeState.failedLoadingData(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedLoadingDataImplCopyWith<_$FailedLoadingDataImpl> get copyWith =>
      __$$FailedLoadingDataImplCopyWithImpl<_$FailedLoadingDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)
        loadedData,
    required TResult Function(String message) failedLoadingData,
  }) {
    return failedLoadingData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult? Function(String message)? failedLoadingData,
  }) {
    return failedLoadingData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(List<TOTProduct> products, bool? isSearching,
            List<CategoryItem>? categories, bool isCategoryLoading)?
        loadedData,
    TResult Function(String message)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (failedLoadingData != null) {
      return failedLoadingData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedData value) loadedData,
    required TResult Function(_FailedLoadingData value) failedLoadingData,
  }) {
    return failedLoadingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedData value)? loadedData,
    TResult? Function(_FailedLoadingData value)? failedLoadingData,
  }) {
    return failedLoadingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedData value)? loadedData,
    TResult Function(_FailedLoadingData value)? failedLoadingData,
    required TResult orElse(),
  }) {
    if (failedLoadingData != null) {
      return failedLoadingData(this);
    }
    return orElse();
  }
}

abstract class _FailedLoadingData implements HomeState {
  factory _FailedLoadingData(String message) = _$FailedLoadingDataImpl;

  String get message;
  set message(String value);
  @JsonKey(ignore: true)
  _$$FailedLoadingDataImplCopyWith<_$FailedLoadingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
