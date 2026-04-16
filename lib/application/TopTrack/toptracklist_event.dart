// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'toptracklist_bloc.dart';

@freezed
abstract class ToptracklistEvent with _$ToptracklistEvent {
  const factory ToptracklistEvent.gettoptrackslist(String artistid) =
      _Gettoptrackslist;
}
