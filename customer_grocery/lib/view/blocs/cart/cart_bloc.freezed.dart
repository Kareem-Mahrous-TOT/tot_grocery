// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(
            String? productId, String? catalogId, String? sku, String? name)
        addItemToCart,
    required TResult Function() fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult? Function()? fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult Function()? fetching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddItemtoCart value) addItemToCart,
    required TResult Function(_Fetching value) fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddItemtoCart value)? addItemToCart,
    TResult? Function(_Fetching value)? fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddItemtoCart value)? addItemToCart,
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(
            String? productId, String? catalogId, String? sku, String? name)
        addItemToCart,
    required TResult Function() fetching,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult? Function()? fetching,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult Function()? fetching,
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
    required TResult Function(_AddItemtoCart value) addItemToCart,
    required TResult Function(_Fetching value) fetching,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddItemtoCart value)? addItemToCart,
    TResult? Function(_Fetching value)? fetching,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddItemtoCart value)? addItemToCart,
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(
            String? productId, String? catalogId, String? sku, String? name)
        addItemToCart,
    required TResult Function() fetching,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult? Function()? fetching,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult Function()? fetching,
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
    required TResult Function(_AddItemtoCart value) addItemToCart,
    required TResult Function(_Fetching value) fetching,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddItemtoCart value)? addItemToCart,
    TResult? Function(_Fetching value)? fetching,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddItemtoCart value)? addItemToCart,
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartEvent {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl with DiagnosticableTreeMixin implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(
            String? productId, String? catalogId, String? sku, String? name)
        addItemToCart,
    required TResult Function() fetching,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult? Function()? fetching,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult Function()? fetching,
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
    required TResult Function(_AddItemtoCart value) addItemToCart,
    required TResult Function(_Fetching value) fetching,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddItemtoCart value)? addItemToCart,
    TResult? Function(_Fetching value)? fetching,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddItemtoCart value)? addItemToCart,
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements CartEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$AddItemtoCartImplCopyWith<$Res> {
  factory _$$AddItemtoCartImplCopyWith(
          _$AddItemtoCartImpl value, $Res Function(_$AddItemtoCartImpl) then) =
      __$$AddItemtoCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? productId, String? catalogId, String? sku, String? name});
}

/// @nodoc
class __$$AddItemtoCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddItemtoCartImpl>
    implements _$$AddItemtoCartImplCopyWith<$Res> {
  __$$AddItemtoCartImplCopyWithImpl(
      _$AddItemtoCartImpl _value, $Res Function(_$AddItemtoCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? catalogId = freezed,
    Object? sku = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AddItemtoCartImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddItemtoCartImpl
    with DiagnosticableTreeMixin
    implements _AddItemtoCart {
  const _$AddItemtoCartImpl(
      {this.productId, this.catalogId, this.sku, this.name});

  @override
  final String? productId;
  @override
  final String? catalogId;
  @override
  final String? sku;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.addItemToCart(productId: $productId, catalogId: $catalogId, sku: $sku, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.addItemToCart'))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('catalogId', catalogId))
      ..add(DiagnosticsProperty('sku', sku))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemtoCartImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, catalogId, sku, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemtoCartImplCopyWith<_$AddItemtoCartImpl> get copyWith =>
      __$$AddItemtoCartImplCopyWithImpl<_$AddItemtoCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(
            String? productId, String? catalogId, String? sku, String? name)
        addItemToCart,
    required TResult Function() fetching,
  }) {
    return addItemToCart(productId, catalogId, sku, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult? Function()? fetching,
  }) {
    return addItemToCart?.call(productId, catalogId, sku, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult Function()? fetching,
    required TResult orElse(),
  }) {
    if (addItemToCart != null) {
      return addItemToCart(productId, catalogId, sku, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddItemtoCart value) addItemToCart,
    required TResult Function(_Fetching value) fetching,
  }) {
    return addItemToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddItemtoCart value)? addItemToCart,
    TResult? Function(_Fetching value)? fetching,
  }) {
    return addItemToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddItemtoCart value)? addItemToCart,
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) {
    if (addItemToCart != null) {
      return addItemToCart(this);
    }
    return orElse();
  }
}

abstract class _AddItemtoCart implements CartEvent {
  const factory _AddItemtoCart(
      {final String? productId,
      final String? catalogId,
      final String? sku,
      final String? name}) = _$AddItemtoCartImpl;

  String? get productId;
  String? get catalogId;
  String? get sku;
  String? get name;
  @JsonKey(ignore: true)
  _$$AddItemtoCartImplCopyWith<_$AddItemtoCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchingImplCopyWith<$Res> {
  factory _$$FetchingImplCopyWith(
          _$FetchingImpl value, $Res Function(_$FetchingImpl) then) =
      __$$FetchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$FetchingImpl>
    implements _$$FetchingImplCopyWith<$Res> {
  __$$FetchingImplCopyWithImpl(
      _$FetchingImpl _value, $Res Function(_$FetchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchingImpl with DiagnosticableTreeMixin implements _Fetching {
  const _$FetchingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.fetching()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.fetching'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(
            String? productId, String? catalogId, String? sku, String? name)
        addItemToCart,
    required TResult Function() fetching,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult? Function()? fetching,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(
            String? productId, String? catalogId, String? sku, String? name)?
        addItemToCart,
    TResult Function()? fetching,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddItemtoCart value) addItemToCart,
    required TResult Function(_Fetching value) fetching,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddItemtoCart value)? addItemToCart,
    TResult? Function(_Fetching value)? fetching,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddItemtoCart value)? addItemToCart,
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements CartEvent {
  const factory _Fetching() = _$FetchingImpl;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(CartById cart) dataLoadedState,
    required TResult Function() itemAdded,
    required TResult Function(String message) dataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(CartById cart)? dataLoadedState,
    TResult? Function()? itemAdded,
    TResult? Function(String message)? dataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(CartById cart)? dataLoadedState,
    TResult Function()? itemAdded,
    TResult Function(String message)? dataFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_DataLoadedState value) dataLoadedState,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_DataFailedState value) dataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_DataLoadedState value)? dataLoadedState,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_DataFailedState value)? dataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_DataLoadedState value)? dataLoadedState,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_DataFailedState value)? dataFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(CartById cart) dataLoadedState,
    required TResult Function() itemAdded,
    required TResult Function(String message) dataFailedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(CartById cart)? dataLoadedState,
    TResult? Function()? itemAdded,
    TResult? Function(String message)? dataFailedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(CartById cart)? dataLoadedState,
    TResult Function()? itemAdded,
    TResult Function(String message)? dataFailedState,
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
    required TResult Function(_DataLoadedState value) dataLoadedState,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_DataFailedState value) dataFailedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_DataLoadedState value)? dataLoadedState,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_DataFailedState value)? dataFailedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_DataLoadedState value)? dataLoadedState,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_DataFailedState value)? dataFailedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl with DiagnosticableTreeMixin implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.loadingState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(CartById cart) dataLoadedState,
    required TResult Function() itemAdded,
    required TResult Function(String message) dataFailedState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(CartById cart)? dataLoadedState,
    TResult? Function()? itemAdded,
    TResult? Function(String message)? dataFailedState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(CartById cart)? dataLoadedState,
    TResult Function()? itemAdded,
    TResult Function(String message)? dataFailedState,
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
    required TResult Function(_DataLoadedState value) dataLoadedState,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_DataFailedState value) dataFailedState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_DataLoadedState value)? dataLoadedState,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_DataFailedState value)? dataFailedState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_DataLoadedState value)? dataLoadedState,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_DataFailedState value)? dataFailedState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements CartState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$DataLoadedStateImplCopyWith<$Res> {
  factory _$$DataLoadedStateImplCopyWith(_$DataLoadedStateImpl value,
          $Res Function(_$DataLoadedStateImpl) then) =
      __$$DataLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartById cart});

  $CartByIdCopyWith<$Res> get cart;
}

/// @nodoc
class __$$DataLoadedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DataLoadedStateImpl>
    implements _$$DataLoadedStateImplCopyWith<$Res> {
  __$$DataLoadedStateImplCopyWithImpl(
      _$DataLoadedStateImpl _value, $Res Function(_$DataLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$DataLoadedStateImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartById,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartByIdCopyWith<$Res> get cart {
    return $CartByIdCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$DataLoadedStateImpl
    with DiagnosticableTreeMixin
    implements _DataLoadedState {
  const _$DataLoadedStateImpl(this.cart);

  @override
  final CartById cart;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.dataLoadedState(cart: $cart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.dataLoadedState'))
      ..add(DiagnosticsProperty('cart', cart));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoadedStateImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLoadedStateImplCopyWith<_$DataLoadedStateImpl> get copyWith =>
      __$$DataLoadedStateImplCopyWithImpl<_$DataLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(CartById cart) dataLoadedState,
    required TResult Function() itemAdded,
    required TResult Function(String message) dataFailedState,
  }) {
    return dataLoadedState(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(CartById cart)? dataLoadedState,
    TResult? Function()? itemAdded,
    TResult? Function(String message)? dataFailedState,
  }) {
    return dataLoadedState?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(CartById cart)? dataLoadedState,
    TResult Function()? itemAdded,
    TResult Function(String message)? dataFailedState,
    required TResult orElse(),
  }) {
    if (dataLoadedState != null) {
      return dataLoadedState(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_DataLoadedState value) dataLoadedState,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_DataFailedState value) dataFailedState,
  }) {
    return dataLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_DataLoadedState value)? dataLoadedState,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_DataFailedState value)? dataFailedState,
  }) {
    return dataLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_DataLoadedState value)? dataLoadedState,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_DataFailedState value)? dataFailedState,
    required TResult orElse(),
  }) {
    if (dataLoadedState != null) {
      return dataLoadedState(this);
    }
    return orElse();
  }
}

abstract class _DataLoadedState implements CartState {
  const factory _DataLoadedState(final CartById cart) = _$DataLoadedStateImpl;

  CartById get cart;
  @JsonKey(ignore: true)
  _$$DataLoadedStateImplCopyWith<_$DataLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemAddedImplCopyWith<$Res> {
  factory _$$ItemAddedImplCopyWith(
          _$ItemAddedImpl value, $Res Function(_$ItemAddedImpl) then) =
      __$$ItemAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemAddedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ItemAddedImpl>
    implements _$$ItemAddedImplCopyWith<$Res> {
  __$$ItemAddedImplCopyWithImpl(
      _$ItemAddedImpl _value, $Res Function(_$ItemAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemAddedImpl with DiagnosticableTreeMixin implements _ItemAdded {
  const _$ItemAddedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.itemAdded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.itemAdded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(CartById cart) dataLoadedState,
    required TResult Function() itemAdded,
    required TResult Function(String message) dataFailedState,
  }) {
    return itemAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(CartById cart)? dataLoadedState,
    TResult? Function()? itemAdded,
    TResult? Function(String message)? dataFailedState,
  }) {
    return itemAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(CartById cart)? dataLoadedState,
    TResult Function()? itemAdded,
    TResult Function(String message)? dataFailedState,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_DataLoadedState value) dataLoadedState,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_DataFailedState value) dataFailedState,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_DataLoadedState value)? dataLoadedState,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_DataFailedState value)? dataFailedState,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_DataLoadedState value)? dataLoadedState,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_DataFailedState value)? dataFailedState,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class _ItemAdded implements CartState {
  const factory _ItemAdded() = _$ItemAddedImpl;
}

/// @nodoc
abstract class _$$DataFailedStateImplCopyWith<$Res> {
  factory _$$DataFailedStateImplCopyWith(_$DataFailedStateImpl value,
          $Res Function(_$DataFailedStateImpl) then) =
      __$$DataFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DataFailedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DataFailedStateImpl>
    implements _$$DataFailedStateImplCopyWith<$Res> {
  __$$DataFailedStateImplCopyWithImpl(
      _$DataFailedStateImpl _value, $Res Function(_$DataFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DataFailedStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataFailedStateImpl
    with DiagnosticableTreeMixin
    implements _DataFailedState {
  const _$DataFailedStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.dataFailedState(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.dataFailedState'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataFailedStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataFailedStateImplCopyWith<_$DataFailedStateImpl> get copyWith =>
      __$$DataFailedStateImplCopyWithImpl<_$DataFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(CartById cart) dataLoadedState,
    required TResult Function() itemAdded,
    required TResult Function(String message) dataFailedState,
  }) {
    return dataFailedState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(CartById cart)? dataLoadedState,
    TResult? Function()? itemAdded,
    TResult? Function(String message)? dataFailedState,
  }) {
    return dataFailedState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(CartById cart)? dataLoadedState,
    TResult Function()? itemAdded,
    TResult Function(String message)? dataFailedState,
    required TResult orElse(),
  }) {
    if (dataFailedState != null) {
      return dataFailedState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_DataLoadedState value) dataLoadedState,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_DataFailedState value) dataFailedState,
  }) {
    return dataFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_DataLoadedState value)? dataLoadedState,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_DataFailedState value)? dataFailedState,
  }) {
    return dataFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_DataLoadedState value)? dataLoadedState,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_DataFailedState value)? dataFailedState,
    required TResult orElse(),
  }) {
    if (dataFailedState != null) {
      return dataFailedState(this);
    }
    return orElse();
  }
}

abstract class _DataFailedState implements CartState {
  const factory _DataFailedState(final String message) = _$DataFailedStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DataFailedStateImplCopyWith<_$DataFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
