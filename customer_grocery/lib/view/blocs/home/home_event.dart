part of 'home_bloc.dart';

@unfreezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.started() = _Started;
  factory HomeEvent.loading() = _Loading;
  factory HomeEvent.refresh() = _Refresh;
  factory HomeEvent.favorite({
    required String id,
    required bool isSelected,
  }) = _Favorite;
  factory HomeEvent.loadProducts() = _LoadProducts;
  factory HomeEvent.searchList({String? query}) = _SearchList;
  // factory HomeEvent.fetchProductsByCatId({String? catId}) = _FetchProductsByCatId;
}
