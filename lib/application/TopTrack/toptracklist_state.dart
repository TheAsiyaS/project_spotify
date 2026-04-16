// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'toptracklist_bloc.dart';

@freezed
abstract class ToptracklistState with _$ToptracklistState {
  const factory ToptracklistState({
    required List<Track> toptrackList,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory ToptracklistState.initial() => const ToptracklistState(
      toptrackList: [], iserror: false, isLoading: false);
}
