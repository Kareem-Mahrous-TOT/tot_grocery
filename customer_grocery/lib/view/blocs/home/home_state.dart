part of 'home_bloc.dart';

@unfreezed
class HomeState with _$HomeState {
  factory HomeState.initial() = _Initial;
  factory HomeState.loadingState() = _LoadingState;
  factory HomeState.loadedData({
    required List<TOTProduct> products,
    bool? isSearching,
    List<CategoryItem>? categories,
    @Default(true) bool isCategoryLoading,
  }) = _LoadedData;
  factory HomeState.failedLoadingData(String message) = _FailedLoadingData;
}
