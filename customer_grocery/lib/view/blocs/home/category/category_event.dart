part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.fetch(String categoryId) = _Fetch;
  const factory CategoryEvent.error(String? message) = _Error;
  
}