// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<Map<String, dynamic>> searchItems,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory SearchState.initial() => const SearchState(
        searchItems: [],
        iserror: false,
        isLoading: false,
      );
}
