// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'songvalues_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SongvaluesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongvaluesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongvaluesEvent()';
}


}

/// @nodoc
class $SongvaluesEventCopyWith<$Res>  {
$SongvaluesEventCopyWith(SongvaluesEvent _, $Res Function(SongvaluesEvent) __);
}


/// Adds pattern-matching-related methods to [SongvaluesEvent].
extension SongvaluesEventPatterns on SongvaluesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSongvalue value)?  getSongvalue,TResult Function( _UpdatePlayback value)?  updatePlayback,TResult Function( _SetFullScreenPlayerOpen value)?  setFullScreenPlayerOpen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSongvalue() when getSongvalue != null:
return getSongvalue(_that);case _UpdatePlayback() when updatePlayback != null:
return updatePlayback(_that);case _SetFullScreenPlayerOpen() when setFullScreenPlayerOpen != null:
return setFullScreenPlayerOpen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSongvalue value)  getSongvalue,required TResult Function( _UpdatePlayback value)  updatePlayback,required TResult Function( _SetFullScreenPlayerOpen value)  setFullScreenPlayerOpen,}){
final _that = this;
switch (_that) {
case _GetSongvalue():
return getSongvalue(_that);case _UpdatePlayback():
return updatePlayback(_that);case _SetFullScreenPlayerOpen():
return setFullScreenPlayerOpen(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSongvalue value)?  getSongvalue,TResult? Function( _UpdatePlayback value)?  updatePlayback,TResult? Function( _SetFullScreenPlayerOpen value)?  setFullScreenPlayerOpen,}){
final _that = this;
switch (_that) {
case _GetSongvalue() when getSongvalue != null:
return getSongvalue(_that);case _UpdatePlayback() when updatePlayback != null:
return updatePlayback(_that);case _SetFullScreenPlayerOpen() when setFullScreenPlayerOpen != null:
return setFullScreenPlayerOpen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String songimgurl,  String songUrl,  String songname,  String artistname,  String artistid)?  getSongvalue,TResult Function( bool isPlaying)?  updatePlayback,TResult Function( bool open)?  setFullScreenPlayerOpen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSongvalue() when getSongvalue != null:
return getSongvalue(_that.songimgurl,_that.songUrl,_that.songname,_that.artistname,_that.artistid);case _UpdatePlayback() when updatePlayback != null:
return updatePlayback(_that.isPlaying);case _SetFullScreenPlayerOpen() when setFullScreenPlayerOpen != null:
return setFullScreenPlayerOpen(_that.open);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String songimgurl,  String songUrl,  String songname,  String artistname,  String artistid)  getSongvalue,required TResult Function( bool isPlaying)  updatePlayback,required TResult Function( bool open)  setFullScreenPlayerOpen,}) {final _that = this;
switch (_that) {
case _GetSongvalue():
return getSongvalue(_that.songimgurl,_that.songUrl,_that.songname,_that.artistname,_that.artistid);case _UpdatePlayback():
return updatePlayback(_that.isPlaying);case _SetFullScreenPlayerOpen():
return setFullScreenPlayerOpen(_that.open);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String songimgurl,  String songUrl,  String songname,  String artistname,  String artistid)?  getSongvalue,TResult? Function( bool isPlaying)?  updatePlayback,TResult? Function( bool open)?  setFullScreenPlayerOpen,}) {final _that = this;
switch (_that) {
case _GetSongvalue() when getSongvalue != null:
return getSongvalue(_that.songimgurl,_that.songUrl,_that.songname,_that.artistname,_that.artistid);case _UpdatePlayback() when updatePlayback != null:
return updatePlayback(_that.isPlaying);case _SetFullScreenPlayerOpen() when setFullScreenPlayerOpen != null:
return setFullScreenPlayerOpen(_that.open);case _:
  return null;

}
}

}

/// @nodoc


class _GetSongvalue implements SongvaluesEvent {
  const _GetSongvalue({required this.songimgurl, required this.songUrl, required this.songname, required this.artistname, required this.artistid});
  

 final  String songimgurl;
 final  String songUrl;
 final  String songname;
 final  String artistname;
 final  String artistid;

/// Create a copy of SongvaluesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSongvalueCopyWith<_GetSongvalue> get copyWith => __$GetSongvalueCopyWithImpl<_GetSongvalue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSongvalue&&(identical(other.songimgurl, songimgurl) || other.songimgurl == songimgurl)&&(identical(other.songUrl, songUrl) || other.songUrl == songUrl)&&(identical(other.songname, songname) || other.songname == songname)&&(identical(other.artistname, artistname) || other.artistname == artistname)&&(identical(other.artistid, artistid) || other.artistid == artistid));
}


@override
int get hashCode => Object.hash(runtimeType,songimgurl,songUrl,songname,artistname,artistid);

@override
String toString() {
  return 'SongvaluesEvent.getSongvalue(songimgurl: $songimgurl, songUrl: $songUrl, songname: $songname, artistname: $artistname, artistid: $artistid)';
}


}

/// @nodoc
abstract mixin class _$GetSongvalueCopyWith<$Res> implements $SongvaluesEventCopyWith<$Res> {
  factory _$GetSongvalueCopyWith(_GetSongvalue value, $Res Function(_GetSongvalue) _then) = __$GetSongvalueCopyWithImpl;
@useResult
$Res call({
 String songimgurl, String songUrl, String songname, String artistname, String artistid
});




}
/// @nodoc
class __$GetSongvalueCopyWithImpl<$Res>
    implements _$GetSongvalueCopyWith<$Res> {
  __$GetSongvalueCopyWithImpl(this._self, this._then);

  final _GetSongvalue _self;
  final $Res Function(_GetSongvalue) _then;

/// Create a copy of SongvaluesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? songimgurl = null,Object? songUrl = null,Object? songname = null,Object? artistname = null,Object? artistid = null,}) {
  return _then(_GetSongvalue(
songimgurl: null == songimgurl ? _self.songimgurl : songimgurl // ignore: cast_nullable_to_non_nullable
as String,songUrl: null == songUrl ? _self.songUrl : songUrl // ignore: cast_nullable_to_non_nullable
as String,songname: null == songname ? _self.songname : songname // ignore: cast_nullable_to_non_nullable
as String,artistname: null == artistname ? _self.artistname : artistname // ignore: cast_nullable_to_non_nullable
as String,artistid: null == artistid ? _self.artistid : artistid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdatePlayback implements SongvaluesEvent {
  const _UpdatePlayback({required this.isPlaying});
  

 final  bool isPlaying;

/// Create a copy of SongvaluesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePlaybackCopyWith<_UpdatePlayback> get copyWith => __$UpdatePlaybackCopyWithImpl<_UpdatePlayback>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePlayback&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying));
}


@override
int get hashCode => Object.hash(runtimeType,isPlaying);

@override
String toString() {
  return 'SongvaluesEvent.updatePlayback(isPlaying: $isPlaying)';
}


}

/// @nodoc
abstract mixin class _$UpdatePlaybackCopyWith<$Res> implements $SongvaluesEventCopyWith<$Res> {
  factory _$UpdatePlaybackCopyWith(_UpdatePlayback value, $Res Function(_UpdatePlayback) _then) = __$UpdatePlaybackCopyWithImpl;
@useResult
$Res call({
 bool isPlaying
});




}
/// @nodoc
class __$UpdatePlaybackCopyWithImpl<$Res>
    implements _$UpdatePlaybackCopyWith<$Res> {
  __$UpdatePlaybackCopyWithImpl(this._self, this._then);

  final _UpdatePlayback _self;
  final $Res Function(_UpdatePlayback) _then;

/// Create a copy of SongvaluesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPlaying = null,}) {
  return _then(_UpdatePlayback(
isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _SetFullScreenPlayerOpen implements SongvaluesEvent {
  const _SetFullScreenPlayerOpen({required this.open});
  

 final  bool open;

/// Create a copy of SongvaluesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetFullScreenPlayerOpenCopyWith<_SetFullScreenPlayerOpen> get copyWith => __$SetFullScreenPlayerOpenCopyWithImpl<_SetFullScreenPlayerOpen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetFullScreenPlayerOpen&&(identical(other.open, open) || other.open == open));
}


@override
int get hashCode => Object.hash(runtimeType,open);

@override
String toString() {
  return 'SongvaluesEvent.setFullScreenPlayerOpen(open: $open)';
}


}

/// @nodoc
abstract mixin class _$SetFullScreenPlayerOpenCopyWith<$Res> implements $SongvaluesEventCopyWith<$Res> {
  factory _$SetFullScreenPlayerOpenCopyWith(_SetFullScreenPlayerOpen value, $Res Function(_SetFullScreenPlayerOpen) _then) = __$SetFullScreenPlayerOpenCopyWithImpl;
@useResult
$Res call({
 bool open
});




}
/// @nodoc
class __$SetFullScreenPlayerOpenCopyWithImpl<$Res>
    implements _$SetFullScreenPlayerOpenCopyWith<$Res> {
  __$SetFullScreenPlayerOpenCopyWithImpl(this._self, this._then);

  final _SetFullScreenPlayerOpen _self;
  final $Res Function(_SetFullScreenPlayerOpen) _then;

/// Create a copy of SongvaluesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? open = null,}) {
  return _then(_SetFullScreenPlayerOpen(
open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SongvaluesState {

 String get songimgurl; String get songUrl; String get songname; String get artistname; String get artistid; bool get isPlaying; bool get fullScreenPlayerOpen;
/// Create a copy of SongvaluesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongvaluesStateCopyWith<SongvaluesState> get copyWith => _$SongvaluesStateCopyWithImpl<SongvaluesState>(this as SongvaluesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongvaluesState&&(identical(other.songimgurl, songimgurl) || other.songimgurl == songimgurl)&&(identical(other.songUrl, songUrl) || other.songUrl == songUrl)&&(identical(other.songname, songname) || other.songname == songname)&&(identical(other.artistname, artistname) || other.artistname == artistname)&&(identical(other.artistid, artistid) || other.artistid == artistid)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.fullScreenPlayerOpen, fullScreenPlayerOpen) || other.fullScreenPlayerOpen == fullScreenPlayerOpen));
}


@override
int get hashCode => Object.hash(runtimeType,songimgurl,songUrl,songname,artistname,artistid,isPlaying,fullScreenPlayerOpen);

@override
String toString() {
  return 'SongvaluesState(songimgurl: $songimgurl, songUrl: $songUrl, songname: $songname, artistname: $artistname, artistid: $artistid, isPlaying: $isPlaying, fullScreenPlayerOpen: $fullScreenPlayerOpen)';
}


}

/// @nodoc
abstract mixin class $SongvaluesStateCopyWith<$Res>  {
  factory $SongvaluesStateCopyWith(SongvaluesState value, $Res Function(SongvaluesState) _then) = _$SongvaluesStateCopyWithImpl;
@useResult
$Res call({
 String songimgurl, String songUrl, String songname, String artistname, String artistid, bool isPlaying, bool fullScreenPlayerOpen
});




}
/// @nodoc
class _$SongvaluesStateCopyWithImpl<$Res>
    implements $SongvaluesStateCopyWith<$Res> {
  _$SongvaluesStateCopyWithImpl(this._self, this._then);

  final SongvaluesState _self;
  final $Res Function(SongvaluesState) _then;

/// Create a copy of SongvaluesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? songimgurl = null,Object? songUrl = null,Object? songname = null,Object? artistname = null,Object? artistid = null,Object? isPlaying = null,Object? fullScreenPlayerOpen = null,}) {
  return _then(_self.copyWith(
songimgurl: null == songimgurl ? _self.songimgurl : songimgurl // ignore: cast_nullable_to_non_nullable
as String,songUrl: null == songUrl ? _self.songUrl : songUrl // ignore: cast_nullable_to_non_nullable
as String,songname: null == songname ? _self.songname : songname // ignore: cast_nullable_to_non_nullable
as String,artistname: null == artistname ? _self.artistname : artistname // ignore: cast_nullable_to_non_nullable
as String,artistid: null == artistid ? _self.artistid : artistid // ignore: cast_nullable_to_non_nullable
as String,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,fullScreenPlayerOpen: null == fullScreenPlayerOpen ? _self.fullScreenPlayerOpen : fullScreenPlayerOpen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SongvaluesState].
extension SongvaluesStatePatterns on SongvaluesState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String songimgurl,  String songUrl,  String songname,  String artistname,  String artistid,  bool isPlaying,  bool fullScreenPlayerOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.songimgurl,_that.songUrl,_that.songname,_that.artistname,_that.artistid,_that.isPlaying,_that.fullScreenPlayerOpen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String songimgurl,  String songUrl,  String songname,  String artistname,  String artistid,  bool isPlaying,  bool fullScreenPlayerOpen)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.songimgurl,_that.songUrl,_that.songname,_that.artistname,_that.artistid,_that.isPlaying,_that.fullScreenPlayerOpen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String songimgurl,  String songUrl,  String songname,  String artistname,  String artistid,  bool isPlaying,  bool fullScreenPlayerOpen)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.songimgurl,_that.songUrl,_that.songname,_that.artistname,_that.artistid,_that.isPlaying,_that.fullScreenPlayerOpen);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SongvaluesState {
  const _Initial({required this.songimgurl, required this.songUrl, required this.songname, required this.artistname, required this.artistid, this.isPlaying = false, this.fullScreenPlayerOpen = false});
  

@override final  String songimgurl;
@override final  String songUrl;
@override final  String songname;
@override final  String artistname;
@override final  String artistid;
@override@JsonKey() final  bool isPlaying;
@override@JsonKey() final  bool fullScreenPlayerOpen;

/// Create a copy of SongvaluesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.songimgurl, songimgurl) || other.songimgurl == songimgurl)&&(identical(other.songUrl, songUrl) || other.songUrl == songUrl)&&(identical(other.songname, songname) || other.songname == songname)&&(identical(other.artistname, artistname) || other.artistname == artistname)&&(identical(other.artistid, artistid) || other.artistid == artistid)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.fullScreenPlayerOpen, fullScreenPlayerOpen) || other.fullScreenPlayerOpen == fullScreenPlayerOpen));
}


@override
int get hashCode => Object.hash(runtimeType,songimgurl,songUrl,songname,artistname,artistid,isPlaying,fullScreenPlayerOpen);

@override
String toString() {
  return 'SongvaluesState(songimgurl: $songimgurl, songUrl: $songUrl, songname: $songname, artistname: $artistname, artistid: $artistid, isPlaying: $isPlaying, fullScreenPlayerOpen: $fullScreenPlayerOpen)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $SongvaluesStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 String songimgurl, String songUrl, String songname, String artistname, String artistid, bool isPlaying, bool fullScreenPlayerOpen
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of SongvaluesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? songimgurl = null,Object? songUrl = null,Object? songname = null,Object? artistname = null,Object? artistid = null,Object? isPlaying = null,Object? fullScreenPlayerOpen = null,}) {
  return _then(_Initial(
songimgurl: null == songimgurl ? _self.songimgurl : songimgurl // ignore: cast_nullable_to_non_nullable
as String,songUrl: null == songUrl ? _self.songUrl : songUrl // ignore: cast_nullable_to_non_nullable
as String,songname: null == songname ? _self.songname : songname // ignore: cast_nullable_to_non_nullable
as String,artistname: null == artistname ? _self.artistname : artistname // ignore: cast_nullable_to_non_nullable
as String,artistid: null == artistid ? _self.artistid : artistid // ignore: cast_nullable_to_non_nullable
as String,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,fullScreenPlayerOpen: null == fullScreenPlayerOpen ? _self.fullScreenPlayerOpen : fullScreenPlayerOpen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
