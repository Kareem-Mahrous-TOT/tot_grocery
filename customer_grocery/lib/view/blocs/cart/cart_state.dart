part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loadingState() = _LoadingState;
  const factory CartState.dataLoadedState(CartById cart) = _DataLoadedState;
  const factory CartState.itemAdded() = _ItemAdded;
  const factory CartState.dataFailedState(String message) = _DataFailedState;
}
