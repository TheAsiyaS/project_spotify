// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_artists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListArtistsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListArtistsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListArtistsEvent()';
}


}

/// @nodoc
class $ListArtistsEventCopyWith<$Res>  {
$ListArtistsEventCopyWith(ListArtistsEvent _, $Res Function(ListArtistsEvent) __);
}


/// Adds pattern-matching-related methods to [ListArtistsEvent].
extension ListArtistsEventPatterns on ListArtistsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Getartistslist value)?  getartistslist,TResult Function( _Getartist value)?  getartist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Getartistslist() when getartistslist != null:
return getartistslist(_that);case _Getartist() when getartist != null:
return getartist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Getartistslist value)  getartistslist,required TResult Function( _Getartist value)  getartist,}){
final _that = this;
switch (_that) {
case _Getartistslist():
return getartistslist(_that);case _Getartist():
return getartist(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Getartistslist value)?  getartistslist,TResult? Function( _Getartist value)?  getartist,}){
final _that = this;
switch (_that) {
case _Getartistslist() when getartistslist != null:
return getartistslist(_that);case _Getartist() when getartist != null:
return getartist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getartistslist,TResult Function( List<String> artistid)?  getartist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Getartistslist() when getartistslist != null:
return getartistslist();case _Getartist() when getartist != null:
return getartist(_that.artistid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getartistslist,required TResult Function( List<String> artistid)  getartist,}) {final _that = this;
switch (_that) {
case _Getartistslist():
return getartistslist();case _Getartist():
return getartist(_that.artistid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getartistslist,TResult? Function( List<String> artistid)?  getartist,}) {final _that = this;
switch (_that) {
case _Getartistslist() when getartistslist != null:
return getartistslist();case _Getartist() when getartist != null:
return getartist(_that.artistid);case _:
  return null;

}
}

}

/// @nodoc


class _Getartistslist implements ListArtistsEvent {
  const _Getartistslist();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Getartistslist);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListArtistsEvent.getartistslist()';
}


}




/// @nodoc


class _Getartist implements ListArtistsEvent {
  const _Getartist(final  List<String> artistid): _artistid = artistid;
  

 final  List<String> _artistid;
 List<String> get artistid {
  if (_artistid is EqualUnmodifiableListView) return _artistid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artistid);
}


/// Create a copy of ListArtistsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetartistCopyWith<_Getartist> get copyWith => __$GetartistCopyWithImpl<_Getartist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Getartist&&const DeepCollectionEquality().equals(other._artistid, _artistid));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_artistid));

@override
String toString() {
  return 'ListArtistsEvent.getartist(artistid: $artistid)';
}


}

/// @nodoc
abstract mixin class _$GetartistCopyWith<$Res> implements $ListArtistsEventCopyWith<$Res> {
  factory _$GetartistCopyWith(_Getartist value, $Res Function(_Getartist) _then) = __$GetartistCopyWithImpl;
@useResult
$Res call({
 List<String> artistid
});




}
/// @nodoc
class __$GetartistCopyWithImpl<$Res>
    implements _$GetartistCopyWith<$Res> {
  __$GetartistCopyWithImpl(this._self, this._then);

  final _Getartist _self;
  final $Res Function(_Getartist) _then;

/// Create a copy of ListArtistsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? artistid = null,}) {
  return _then(_Getartist(
null == artistid ? _self._artistid : artistid // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$ListArtistsState {

 List<Artist> get artistList; List<Artist> get artist; bool get isLoading; bool get iserror;
/// Create a copy of ListArtistsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListArtistsStateCopyWith<ListArtistsState> get copyWith => _$ListArtistsStateCopyWithImpl<ListArtistsState>(this as ListArtistsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListArtistsState&&const DeepCollectionEquality().equals(other.artistList, artistList)&&const DeepCollectionEquality().equals(other.artist, artist)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(artistList),const DeepCollectionEquality().hash(artist),isLoading,iserror);

@override
String toString() {
  return 'ListArtistsState(artistList: $artistList, artist: $artist, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class $ListArtistsStateCopyWith<$Res>  {
  factory $ListArtistsStateCopyWith(ListArtistsState value, $Res Function(ListArtistsState) _then) = _$ListArtistsStateCopyWithImpl;
@useResult
$Res call({
 List<Artist> artistList, List<Artist> artist, bool isLoading, bool iserror
});




}
/// @nodoc
class _$ListArtistsStateCopyWithImpl<$Res>
    implements $ListArtistsStateCopyWith<$Res> {
  _$ListArtistsStateCopyWithImpl(this._self, this._then);

  final ListArtistsState _self;
  final $Res Function(ListArtistsState) _then;

/// Create a copy of ListArtistsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? artistList = null,Object? artist = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_self.copyWith(
artistList: null == artistList ? _self.artistList : artistList // ignore: cast_nullable_to_non_nullable
as List<Artist>,artist: null == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as List<Artist>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ListArtistsState].
extension ListArtistsStatePatterns on ListArtistsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Artist> artistList,  List<Artist> artist,  bool isLoading,  bool iserror)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.artistList,_that.artist,_that.isLoading,_that.iserror);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Artist> artistList,  List<Artist> artist,  bool isLoading,  bool iserror)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.artistList,_that.artist,_that.isLoading,_that.iserror);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Artist> artistList,  List<Artist> artist,  bool isLoading,  bool iserror)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.artistList,_that.artist,_that.isLoading,_that.iserror);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ListArtistsState {
  const _Initial({required final  List<Artist> artistList, required final  List<Artist> artist, required this.isLoading, required this.iserror}): _artistList = artistList,_artist = artist;
  

 final  List<Artist> _artistList;
@override List<Artist> get artistList {
  if (_artistList is EqualUnmodifiableListView) return _artistList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artistList);
}

 final  List<Artist> _artist;
@override List<Artist> get artist {
  if (_artist is EqualUnmodifiableListView) return _artist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artist);
}

@override final  bool isLoading;
@override final  bool iserror;

/// Create a copy of ListArtistsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._artistList, _artistList)&&const DeepCollectionEquality().equals(other._artist, _artist)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.iserror, iserror) || other.iserror == iserror));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_artistList),const DeepCollectionEquality().hash(_artist),isLoading,iserror);

@override
String toString() {
  return 'ListArtistsState(artistList: $artistList, artist: $artist, isLoading: $isLoading, iserror: $iserror)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $ListArtistsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Artist> artistList, List<Artist> artist, bool isLoading, bool iserror
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of ListArtistsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? artistList = null,Object? artist = null,Object? isLoading = null,Object? iserror = null,}) {
  return _then(_Initial(
artistList: null == artistList ? _self._artistList : artistList // ignore: cast_nullable_to_non_nullable
as List<Artist>,artist: null == artist ? _self._artist : artist // ignore: cast_nullable_to_non_nullable
as List<Artist>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
