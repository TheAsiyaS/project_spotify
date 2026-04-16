// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlbumEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlbumEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AlbumEvent()';
}


}

/// @nodoc
class $AlbumEventCopyWith<$Res>  {
$AlbumEventCopyWith(AlbumEvent _, $Res Function(AlbumEvent) __);
}


/// Adds pattern-matching-related methods to [AlbumEvent].
extension AlbumEventPatterns on AlbumEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Getalbumlist value)?  getalbumlist,TResult Function( _Getalbum value)?  getalbum,TResult Function( _Getalbumsongs value)?  getalbumsongs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Getalbumlist() when getalbumlist != null:
return getalbumlist(_that);case _Getalbum() when getalbum != null:
return getalbum(_that);case _Getalbumsongs() when getalbumsongs != null:
return getalbumsongs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Getalbumlist value)  getalbumlist,required TResult Function( _Getalbum value)  getalbum,required TResult Function( _Getalbumsongs value)  getalbumsongs,}){
final _that = this;
switch (_that) {
case _Getalbumlist():
return getalbumlist(_that);case _Getalbum():
return getalbum(_that);case _Getalbumsongs():
return getalbumsongs(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Getalbumlist value)?  getalbumlist,TResult? Function( _Getalbum value)?  getalbum,TResult? Function( _Getalbumsongs value)?  getalbumsongs,}){
final _that = this;
switch (_that) {
case _Getalbumlist() when getalbumlist != null:
return getalbumlist(_that);case _Getalbum() when getalbum != null:
return getalbum(_that);case _Getalbumsongs() when getalbumsongs != null:
return getalbumsongs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getalbumlist,TResult Function( List<String> albumid)?  getalbum,TResult Function()?  getalbumsongs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Getalbumlist() when getalbumlist != null:
return getalbumlist();case _Getalbum() when getalbum != null:
return getalbum(_that.albumid);case _Getalbumsongs() when getalbumsongs != null:
return getalbumsongs();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getalbumlist,required TResult Function( List<String> albumid)  getalbum,required TResult Function()  getalbumsongs,}) {final _that = this;
switch (_that) {
case _Getalbumlist():
return getalbumlist();case _Getalbum():
return getalbum(_that.albumid);case _Getalbumsongs():
return getalbumsongs();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getalbumlist,TResult? Function( List<String> albumid)?  getalbum,TResult? Function()?  getalbumsongs,}) {final _that = this;
switch (_that) {
case _Getalbumlist() when getalbumlist != null:
return getalbumlist();case _Getalbum() when getalbum != null:
return getalbum(_that.albumid);case _Getalbumsongs() when getalbumsongs != null:
return getalbumsongs();case _:
  return null;

}
}

}

/// @nodoc


class _Getalbumlist implements AlbumEvent {
  const _Getalbumlist();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Getalbumlist);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AlbumEvent.getalbumlist()';
}


}




/// @nodoc


class _Getalbum implements AlbumEvent {
  const _Getalbum({required final  List<String> albumid}): _albumid = albumid;
  

 final  List<String> _albumid;
 List<String> get albumid {
  if (_albumid is EqualUnmodifiableListView) return _albumid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_albumid);
}


/// Create a copy of AlbumEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetalbumCopyWith<_Getalbum> get copyWith => __$GetalbumCopyWithImpl<_Getalbum>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Getalbum&&const DeepCollectionEquality().equals(other._albumid, _albumid));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_albumid));

@override
String toString() {
  return 'AlbumEvent.getalbum(albumid: $albumid)';
}


}

/// @nodoc
abstract mixin class _$GetalbumCopyWith<$Res> implements $AlbumEventCopyWith<$Res> {
  factory _$GetalbumCopyWith(_Getalbum value, $Res Function(_Getalbum) _then) = __$GetalbumCopyWithImpl;
@useResult
$Res call({
 List<String> albumid
});




}
/// @nodoc
class __$GetalbumCopyWithImpl<$Res>
    implements _$GetalbumCopyWith<$Res> {
  __$GetalbumCopyWithImpl(this._self, this._then);

  final _Getalbum _self;
  final $Res Function(_Getalbum) _then;

/// Create a copy of AlbumEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? albumid = null,}) {
  return _then(_Getalbum(
albumid: null == albumid ? _self._albumid : albumid // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _Getalbumsongs implements AlbumEvent {
  const _Getalbumsongs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Getalbumsongs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AlbumEvent.getalbumsongs()';
}


}




/// @nodoc
mixin _$AlbumState {

 List<Album> get albumList; List<Album> get albumsongs; bool get isLoading; bool get iserror;
/// Create a copy of AlbumState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlbumStateCopyWith<AlbumState> get copyWith => _$AlbumStateCopyWithImpl<AlbumState>(this as AlbumState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlbumState&&const DeepCollectionEquality().equals(other.albumList, albumList)&&const DeepCollectionEquality().equals(other.albumsongs, albumsongs)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(albumList),const DeepCollectionEquality().hash(albumsongs),isLoading,iserror);

@override
String toString() {
  return 'AlbumState(albumList: $albumList, albumsongs: $albumsongs, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class $AlbumStateCopyWith<$Res>  {
  factory $AlbumStateCopyWith(AlbumState value, $Res Function(AlbumState) _then) = _$AlbumStateCopyWithImpl;
@useResult
$Res call({
 List<Album> albumList, List<Album> albumsongs, bool isLoading, bool iserror
});




}
/// @nodoc
class _$AlbumStateCopyWithImpl<$Res>
    implements $AlbumStateCopyWith<$Res> {
  _$AlbumStateCopyWithImpl(this._self, this._then);

  final AlbumState _self;
  final $Res Function(AlbumState) _then;

/// Create a copy of AlbumState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? albumList = null,Object? albumsongs = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_self.copyWith(
albumList: null == albumList ? _self.albumList : albumList // ignore: cast_nullable_to_non_nullable
as List<Album>,albumsongs: null == albumsongs ? _self.albumsongs : albumsongs // ignore: cast_nullable_to_non_nullable
as List<Album>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlbumState].
extension AlbumStatePatterns on AlbumState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Album> albumList,  List<Album> albumsongs,  bool isLoading,  bool iserror)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.albumList,_that.albumsongs,_that.isLoading,_that.iserror);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Album> albumList,  List<Album> albumsongs,  bool isLoading,  bool iserror)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.albumList,_that.albumsongs,_that.isLoading,_that.iserror);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Album> albumList,  List<Album> albumsongs,  bool isLoading,  bool iserror)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.albumList,_that.albumsongs,_that.isLoading,_that.iserror);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AlbumState {
  const _Initial({required final  List<Album> albumList, required final  List<Album> albumsongs, required this.isLoading, required this.iserror}): _albumList = albumList,_albumsongs = albumsongs;
  

 final  List<Album> _albumList;
@override List<Album> get albumList {
  if (_albumList is EqualUnmodifiableListView) return _albumList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_albumList);
}

 final  List<Album> _albumsongs;
@override List<Album> get albumsongs {
  if (_albumsongs is EqualUnmodifiableListView) return _albumsongs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_albumsongs);
}

@override final  bool isLoading;
@override final  bool iserror;

/// Create a copy of AlbumState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._albumList, _albumList)&&const DeepCollectionEquality().equals(other._albumsongs, _albumsongs)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_albumList),const DeepCollectionEquality().hash(_albumsongs),isLoading,iserror);

@override
String toString() {
  return 'AlbumState(albumList: $albumList, albumsongs: $albumsongs, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AlbumStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Album> albumList, List<Album> albumsongs, bool isLoading, bool iserror
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AlbumState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? albumList = null,Object? albumsongs = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_Initial(
albumList: null == albumList ? _self._albumList : albumList // ignore: cast_nullable_to_non_nullable
as List<Album>,albumsongs: null == albumsongs ? _self._albumsongs : albumsongs // ignore: cast_nullable_to_non_nullable
as List<Album>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
