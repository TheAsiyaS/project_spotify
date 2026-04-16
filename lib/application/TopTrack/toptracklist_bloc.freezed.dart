// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toptracklist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToptracklistEvent {

 String get artistid;
/// Create a copy of ToptracklistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToptracklistEventCopyWith<ToptracklistEvent> get copyWith => _$ToptracklistEventCopyWithImpl<ToptracklistEvent>(this as ToptracklistEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToptracklistEvent&&(identical(other.artistid, artistid) || other.artistid == artistid));
}


@override
int get hashCode => Object.hash(runtimeType,artistid);

@override
String toString() {
  return 'ToptracklistEvent(artistid: $artistid)';
}


}

/// @nodoc
abstract mixin class $ToptracklistEventCopyWith<$Res>  {
  factory $ToptracklistEventCopyWith(ToptracklistEvent value, $Res Function(ToptracklistEvent) _then) = _$ToptracklistEventCopyWithImpl;
@useResult
$Res call({
 String artistid
});




}
/// @nodoc
class _$ToptracklistEventCopyWithImpl<$Res>
    implements $ToptracklistEventCopyWith<$Res> {
  _$ToptracklistEventCopyWithImpl(this._self, this._then);

  final ToptracklistEvent _self;
  final $Res Function(ToptracklistEvent) _then;

/// Create a copy of ToptracklistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? artistid = null,}) {
  return _then(_self.copyWith(
artistid: null == artistid ? _self.artistid : artistid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ToptracklistEvent].
extension ToptracklistEventPatterns on ToptracklistEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Gettoptrackslist value)?  gettoptrackslist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gettoptrackslist() when gettoptrackslist != null:
return gettoptrackslist(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Gettoptrackslist value)  gettoptrackslist,}){
final _that = this;
switch (_that) {
case _Gettoptrackslist():
return gettoptrackslist(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Gettoptrackslist value)?  gettoptrackslist,}){
final _that = this;
switch (_that) {
case _Gettoptrackslist() when gettoptrackslist != null:
return gettoptrackslist(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String artistid)?  gettoptrackslist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gettoptrackslist() when gettoptrackslist != null:
return gettoptrackslist(_that.artistid);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String artistid)  gettoptrackslist,}) {final _that = this;
switch (_that) {
case _Gettoptrackslist():
return gettoptrackslist(_that.artistid);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String artistid)?  gettoptrackslist,}) {final _that = this;
switch (_that) {
case _Gettoptrackslist() when gettoptrackslist != null:
return gettoptrackslist(_that.artistid);case _:
  return null;

}
}

}

/// @nodoc


class _Gettoptrackslist implements ToptracklistEvent {
  const _Gettoptrackslist(this.artistid);
  

@override final  String artistid;

/// Create a copy of ToptracklistEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GettoptrackslistCopyWith<_Gettoptrackslist> get copyWith => __$GettoptrackslistCopyWithImpl<_Gettoptrackslist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gettoptrackslist&&(identical(other.artistid, artistid) || other.artistid == artistid));
}


@override
int get hashCode => Object.hash(runtimeType,artistid);

@override
String toString() {
  return 'ToptracklistEvent.gettoptrackslist(artistid: $artistid)';
}


}

/// @nodoc
abstract mixin class _$GettoptrackslistCopyWith<$Res> implements $ToptracklistEventCopyWith<$Res> {
  factory _$GettoptrackslistCopyWith(_Gettoptrackslist value, $Res Function(_Gettoptrackslist) _then) = __$GettoptrackslistCopyWithImpl;
@override @useResult
$Res call({
 String artistid
});




}
/// @nodoc
class __$GettoptrackslistCopyWithImpl<$Res>
    implements _$GettoptrackslistCopyWith<$Res> {
  __$GettoptrackslistCopyWithImpl(this._self, this._then);

  final _Gettoptrackslist _self;
  final $Res Function(_Gettoptrackslist) _then;

/// Create a copy of ToptracklistEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? artistid = null,}) {
  return _then(_Gettoptrackslist(
null == artistid ? _self.artistid : artistid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ToptracklistState {

 List<Track> get toptrackList; bool get isLoading; bool get iserror;
/// Create a copy of ToptracklistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToptracklistStateCopyWith<ToptracklistState> get copyWith => _$ToptracklistStateCopyWithImpl<ToptracklistState>(this as ToptracklistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToptracklistState&&const DeepCollectionEquality().equals(other.toptrackList, toptrackList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(toptrackList),isLoading,iserror);

@override
String toString() {
  return 'ToptracklistState(toptrackList: $toptrackList, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class $ToptracklistStateCopyWith<$Res>  {
  factory $ToptracklistStateCopyWith(ToptracklistState value, $Res Function(ToptracklistState) _then) = _$ToptracklistStateCopyWithImpl;
@useResult
$Res call({
 List<Track> toptrackList, bool isLoading, bool iserror
});




}
/// @nodoc
class _$ToptracklistStateCopyWithImpl<$Res>
    implements $ToptracklistStateCopyWith<$Res> {
  _$ToptracklistStateCopyWithImpl(this._self, this._then);

  final ToptracklistState _self;
  final $Res Function(ToptracklistState) _then;

/// Create a copy of ToptracklistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toptrackList = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_self.copyWith(
toptrackList: null == toptrackList ? _self.toptrackList : toptrackList // ignore: cast_nullable_to_non_nullable
as List<Track>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ToptracklistState].
extension ToptracklistStatePatterns on ToptracklistState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Initial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Initial value)  $default,){
final _that = this;
switch (_that) {
case _Initial():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Initial value)?  $default,){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Track> toptrackList,  bool isLoading,  bool iserror)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.toptrackList,_that.isLoading,_that.iserror);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Track> toptrackList,  bool isLoading,  bool iserror)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.toptrackList,_that.isLoading,_that.iserror);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Track> toptrackList,  bool isLoading,  bool iserror)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.toptrackList,_that.isLoading,_that.iserror);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ToptracklistState {
  const _Initial({required final  List<Track> toptrackList, required this.isLoading, required this.iserror}): _toptrackList = toptrackList;
  

 final  List<Track> _toptrackList;
@override List<Track> get toptrackList {
  if (_toptrackList is EqualUnmodifiableListView) return _toptrackList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toptrackList);
}

@override final  bool isLoading;
@override final  bool iserror;

/// Create a copy of ToptracklistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._toptrackList, _toptrackList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_toptrackList),isLoading,iserror);

@override
String toString() {
  return 'ToptracklistState(toptrackList: $toptrackList, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $ToptracklistStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Track> toptrackList, bool isLoading, bool iserror
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of ToptracklistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toptrackList = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_Initial(
toptrackList: null == toptrackList ? _self._toptrackList : toptrackList // ignore: cast_nullable_to_non_nullable
as List<Track>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
