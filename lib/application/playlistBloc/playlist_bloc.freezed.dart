// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlaylistEvent {

 List<String> get playlistids;
/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaylistEventCopyWith<PlaylistEvent> get copyWith => _$PlaylistEventCopyWithImpl<PlaylistEvent>(this as PlaylistEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaylistEvent&&const DeepCollectionEquality().equals(other.playlistids, playlistids));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playlistids));

@override
String toString() {
  return 'PlaylistEvent(playlistids: $playlistids)';
}


}

/// @nodoc
abstract mixin class $PlaylistEventCopyWith<$Res>  {
  factory $PlaylistEventCopyWith(PlaylistEvent value, $Res Function(PlaylistEvent) _then) = _$PlaylistEventCopyWithImpl;
@useResult
$Res call({
 List<String> playlistids
});




}
/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._self, this._then);

  final PlaylistEvent _self;
  final $Res Function(PlaylistEvent) _then;

/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playlistids = null,}) {
  return _then(_self.copyWith(
playlistids: null == playlistids ? _self.playlistids : playlistids // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaylistEvent].
extension PlaylistEventPatterns on PlaylistEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetplaylistOverview value)?  getplaylistOverview,TResult Function( _GetplaylistItems value)?  getplaylistItems,TResult Function( _GetplaylistOverview1 value)?  getplaylistOverview1,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetplaylistOverview() when getplaylistOverview != null:
return getplaylistOverview(_that);case _GetplaylistItems() when getplaylistItems != null:
return getplaylistItems(_that);case _GetplaylistOverview1() when getplaylistOverview1 != null:
return getplaylistOverview1(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetplaylistOverview value)  getplaylistOverview,required TResult Function( _GetplaylistItems value)  getplaylistItems,required TResult Function( _GetplaylistOverview1 value)  getplaylistOverview1,}){
final _that = this;
switch (_that) {
case _GetplaylistOverview():
return getplaylistOverview(_that);case _GetplaylistItems():
return getplaylistItems(_that);case _GetplaylistOverview1():
return getplaylistOverview1(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetplaylistOverview value)?  getplaylistOverview,TResult? Function( _GetplaylistItems value)?  getplaylistItems,TResult? Function( _GetplaylistOverview1 value)?  getplaylistOverview1,}){
final _that = this;
switch (_that) {
case _GetplaylistOverview() when getplaylistOverview != null:
return getplaylistOverview(_that);case _GetplaylistItems() when getplaylistItems != null:
return getplaylistItems(_that);case _GetplaylistOverview1() when getplaylistOverview1 != null:
return getplaylistOverview1(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<String> playlistids)?  getplaylistOverview,TResult Function( List<String> playlistids)?  getplaylistItems,TResult Function( List<String> playlistids)?  getplaylistOverview1,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetplaylistOverview() when getplaylistOverview != null:
return getplaylistOverview(_that.playlistids);case _GetplaylistItems() when getplaylistItems != null:
return getplaylistItems(_that.playlistids);case _GetplaylistOverview1() when getplaylistOverview1 != null:
return getplaylistOverview1(_that.playlistids);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<String> playlistids)  getplaylistOverview,required TResult Function( List<String> playlistids)  getplaylistItems,required TResult Function( List<String> playlistids)  getplaylistOverview1,}) {final _that = this;
switch (_that) {
case _GetplaylistOverview():
return getplaylistOverview(_that.playlistids);case _GetplaylistItems():
return getplaylistItems(_that.playlistids);case _GetplaylistOverview1():
return getplaylistOverview1(_that.playlistids);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<String> playlistids)?  getplaylistOverview,TResult? Function( List<String> playlistids)?  getplaylistItems,TResult? Function( List<String> playlistids)?  getplaylistOverview1,}) {final _that = this;
switch (_that) {
case _GetplaylistOverview() when getplaylistOverview != null:
return getplaylistOverview(_that.playlistids);case _GetplaylistItems() when getplaylistItems != null:
return getplaylistItems(_that.playlistids);case _GetplaylistOverview1() when getplaylistOverview1 != null:
return getplaylistOverview1(_that.playlistids);case _:
  return null;

}
}

}

/// @nodoc


class _GetplaylistOverview implements PlaylistEvent {
  const _GetplaylistOverview({required final  List<String> playlistids}): _playlistids = playlistids;
  

 final  List<String> _playlistids;
@override List<String> get playlistids {
  if (_playlistids is EqualUnmodifiableListView) return _playlistids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlistids);
}


/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetplaylistOverviewCopyWith<_GetplaylistOverview> get copyWith => __$GetplaylistOverviewCopyWithImpl<_GetplaylistOverview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetplaylistOverview&&const DeepCollectionEquality().equals(other._playlistids, _playlistids));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playlistids));

@override
String toString() {
  return 'PlaylistEvent.getplaylistOverview(playlistids: $playlistids)';
}


}

/// @nodoc
abstract mixin class _$GetplaylistOverviewCopyWith<$Res> implements $PlaylistEventCopyWith<$Res> {
  factory _$GetplaylistOverviewCopyWith(_GetplaylistOverview value, $Res Function(_GetplaylistOverview) _then) = __$GetplaylistOverviewCopyWithImpl;
@override @useResult
$Res call({
 List<String> playlistids
});




}
/// @nodoc
class __$GetplaylistOverviewCopyWithImpl<$Res>
    implements _$GetplaylistOverviewCopyWith<$Res> {
  __$GetplaylistOverviewCopyWithImpl(this._self, this._then);

  final _GetplaylistOverview _self;
  final $Res Function(_GetplaylistOverview) _then;

/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playlistids = null,}) {
  return _then(_GetplaylistOverview(
playlistids: null == playlistids ? _self._playlistids : playlistids // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _GetplaylistItems implements PlaylistEvent {
  const _GetplaylistItems({required final  List<String> playlistids}): _playlistids = playlistids;
  

 final  List<String> _playlistids;
@override List<String> get playlistids {
  if (_playlistids is EqualUnmodifiableListView) return _playlistids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlistids);
}


/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetplaylistItemsCopyWith<_GetplaylistItems> get copyWith => __$GetplaylistItemsCopyWithImpl<_GetplaylistItems>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetplaylistItems&&const DeepCollectionEquality().equals(other._playlistids, _playlistids));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playlistids));

@override
String toString() {
  return 'PlaylistEvent.getplaylistItems(playlistids: $playlistids)';
}


}

/// @nodoc
abstract mixin class _$GetplaylistItemsCopyWith<$Res> implements $PlaylistEventCopyWith<$Res> {
  factory _$GetplaylistItemsCopyWith(_GetplaylistItems value, $Res Function(_GetplaylistItems) _then) = __$GetplaylistItemsCopyWithImpl;
@override @useResult
$Res call({
 List<String> playlistids
});




}
/// @nodoc
class __$GetplaylistItemsCopyWithImpl<$Res>
    implements _$GetplaylistItemsCopyWith<$Res> {
  __$GetplaylistItemsCopyWithImpl(this._self, this._then);

  final _GetplaylistItems _self;
  final $Res Function(_GetplaylistItems) _then;

/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playlistids = null,}) {
  return _then(_GetplaylistItems(
playlistids: null == playlistids ? _self._playlistids : playlistids // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _GetplaylistOverview1 implements PlaylistEvent {
  const _GetplaylistOverview1({required final  List<String> playlistids}): _playlistids = playlistids;
  

 final  List<String> _playlistids;
@override List<String> get playlistids {
  if (_playlistids is EqualUnmodifiableListView) return _playlistids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlistids);
}


/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetplaylistOverview1CopyWith<_GetplaylistOverview1> get copyWith => __$GetplaylistOverview1CopyWithImpl<_GetplaylistOverview1>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetplaylistOverview1&&const DeepCollectionEquality().equals(other._playlistids, _playlistids));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playlistids));

@override
String toString() {
  return 'PlaylistEvent.getplaylistOverview1(playlistids: $playlistids)';
}


}

/// @nodoc
abstract mixin class _$GetplaylistOverview1CopyWith<$Res> implements $PlaylistEventCopyWith<$Res> {
  factory _$GetplaylistOverview1CopyWith(_GetplaylistOverview1 value, $Res Function(_GetplaylistOverview1) _then) = __$GetplaylistOverview1CopyWithImpl;
@override @useResult
$Res call({
 List<String> playlistids
});




}
/// @nodoc
class __$GetplaylistOverview1CopyWithImpl<$Res>
    implements _$GetplaylistOverview1CopyWith<$Res> {
  __$GetplaylistOverview1CopyWithImpl(this._self, this._then);

  final _GetplaylistOverview1 _self;
  final $Res Function(_GetplaylistOverview1) _then;

/// Create a copy of PlaylistEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playlistids = null,}) {
  return _then(_GetplaylistOverview1(
playlistids: null == playlistids ? _self._playlistids : playlistids // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$PlaylistState {

 List<Item> get playlistItems; List<Map<String, dynamic>> get paylistoverview; List<Map<String, dynamic>> get paylistoverview1; bool get isLoading; bool get iserror;
/// Create a copy of PlaylistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaylistStateCopyWith<PlaylistState> get copyWith => _$PlaylistStateCopyWithImpl<PlaylistState>(this as PlaylistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaylistState&&const DeepCollectionEquality().equals(other.playlistItems, playlistItems)&&const DeepCollectionEquality().equals(other.paylistoverview, paylistoverview)&&const DeepCollectionEquality().equals(other.paylistoverview1, paylistoverview1)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playlistItems),const DeepCollectionEquality().hash(paylistoverview),const DeepCollectionEquality().hash(paylistoverview1),isLoading,iserror);

@override
String toString() {
  return 'PlaylistState(playlistItems: $playlistItems, paylistoverview: $paylistoverview, paylistoverview1: $paylistoverview1, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class $PlaylistStateCopyWith<$Res>  {
  factory $PlaylistStateCopyWith(PlaylistState value, $Res Function(PlaylistState) _then) = _$PlaylistStateCopyWithImpl;
@useResult
$Res call({
 List<Item> playlistItems, List<Map<String, dynamic>> paylistoverview, List<Map<String, dynamic>> paylistoverview1, bool isLoading, bool iserror
});




}
/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._self, this._then);

  final PlaylistState _self;
  final $Res Function(PlaylistState) _then;

/// Create a copy of PlaylistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playlistItems = null,Object? paylistoverview = null,Object? paylistoverview1 = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_self.copyWith(
playlistItems: null == playlistItems ? _self.playlistItems : playlistItems // ignore: cast_nullable_to_non_nullable
as List<Item>,paylistoverview: null == paylistoverview ? _self.paylistoverview : paylistoverview // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,paylistoverview1: null == paylistoverview1 ? _self.paylistoverview1 : paylistoverview1 // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaylistState].
extension PlaylistStatePatterns on PlaylistState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Item> playlistItems,  List<Map<String, dynamic>> paylistoverview,  List<Map<String, dynamic>> paylistoverview1,  bool isLoading,  bool iserror)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.playlistItems,_that.paylistoverview,_that.paylistoverview1,_that.isLoading,_that.iserror);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Item> playlistItems,  List<Map<String, dynamic>> paylistoverview,  List<Map<String, dynamic>> paylistoverview1,  bool isLoading,  bool iserror)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.playlistItems,_that.paylistoverview,_that.paylistoverview1,_that.isLoading,_that.iserror);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Item> playlistItems,  List<Map<String, dynamic>> paylistoverview,  List<Map<String, dynamic>> paylistoverview1,  bool isLoading,  bool iserror)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.playlistItems,_that.paylistoverview,_that.paylistoverview1,_that.isLoading,_that.iserror);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PlaylistState {
  const _Initial({required final  List<Item> playlistItems, required final  List<Map<String, dynamic>> paylistoverview, required final  List<Map<String, dynamic>> paylistoverview1, required this.isLoading, required this.iserror}): _playlistItems = playlistItems,_paylistoverview = paylistoverview,_paylistoverview1 = paylistoverview1;
  

 final  List<Item> _playlistItems;
@override List<Item> get playlistItems {
  if (_playlistItems is EqualUnmodifiableListView) return _playlistItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlistItems);
}

 final  List<Map<String, dynamic>> _paylistoverview;
@override List<Map<String, dynamic>> get paylistoverview {
  if (_paylistoverview is EqualUnmodifiableListView) return _paylistoverview;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paylistoverview);
}

 final  List<Map<String, dynamic>> _paylistoverview1;
@override List<Map<String, dynamic>> get paylistoverview1 {
  if (_paylistoverview1 is EqualUnmodifiableListView) return _paylistoverview1;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paylistoverview1);
}

@override final  bool isLoading;
@override final  bool iserror;

/// Create a copy of PlaylistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._playlistItems, _playlistItems)&&const DeepCollectionEquality().equals(other._paylistoverview, _paylistoverview)&&const DeepCollectionEquality().equals(other._paylistoverview1, _paylistoverview1)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playlistItems),const DeepCollectionEquality().hash(_paylistoverview),const DeepCollectionEquality().hash(_paylistoverview1),isLoading,iserror);

@override
String toString() {
  return 'PlaylistState(playlistItems: $playlistItems, paylistoverview: $paylistoverview, paylistoverview1: $paylistoverview1, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $PlaylistStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Item> playlistItems, List<Map<String, dynamic>> paylistoverview, List<Map<String, dynamic>> paylistoverview1, bool isLoading, bool iserror
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of PlaylistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playlistItems = null,Object? paylistoverview = null,Object? paylistoverview1 = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_Initial(
playlistItems: null == playlistItems ? _self._playlistItems : playlistItems // ignore: cast_nullable_to_non_nullable
as List<Item>,paylistoverview: null == paylistoverview ? _self._paylistoverview : paylistoverview // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,paylistoverview1: null == paylistoverview1 ? _self._paylistoverview1 : paylistoverview1 // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
