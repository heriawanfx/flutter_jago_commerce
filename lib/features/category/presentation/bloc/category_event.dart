part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.getCategories() = _GetCategories;
  const factory CategoryEvent.getCategory(String id) = _GetCategory;
}
