part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _LoadingState;
  const factory CategoryState.loadedData(List<Result> products) = _LoadedDataState;
  const factory CategoryState.error(String? message) = _ErroState;
}
