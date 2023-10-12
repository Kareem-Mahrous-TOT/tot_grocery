part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.loading() = _Loading;
  const factory CartEvent.refresh() = _Refresh;
  const factory CartEvent.addItemToCart({
    String? productId,
    String? catalogId,
    String? sku,
    String? name,
  }) = _AddItemtoCart;

  const factory CartEvent.fetching() = _Fetching;
}
