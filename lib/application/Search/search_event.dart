// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchItem({required String query}) = _SearchItem;
}
