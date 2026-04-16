// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mainFailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$mainFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is mainFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'mainFailure()';
}


}

/// @nodoc
class $mainFailureCopyWith<$Res>  {
$mainFailureCopyWith(mainFailure _, $Res Function(mainFailure) __);
}


/// Adds pattern-matching-related methods to [mainFailure].
extension mainFailurePatterns on mainFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ClientFailure value)?  clientFailure,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientFailure() when clientFailure != null:
return clientFailure(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ClientFailure value)  clientFailure,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _ClientFailure():
return clientFailure(_that);case _ServerFailure():
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ClientFailure value)?  clientFailure,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _ClientFailure() when clientFailure != null:
return clientFailure(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  clientFailure,TResult Function()?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientFailure() when clientFailure != null:
return clientFailure();case _ServerFailure() when serverFailure != null:
return serverFailure();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  clientFailure,required TResult Function()  serverFailure,}) {final _that = this;
switch (_that) {
case _ClientFailure():
return clientFailure();case _ServerFailure():
return serverFailure();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  clientFailure,TResult? Function()?  serverFailure,}) {final _that = this;
switch (_that) {
case _ClientFailure() when clientFailure != null:
return clientFailure();case _ServerFailure() when serverFailure != null:
return serverFailure();case _:
  return null;

}
}

}

/// @nodoc


class _ClientFailure implements mainFailure {
  const _ClientFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'mainFailure.clientFailure()';
}


}




/// @nodoc


class _ServerFailure implements mainFailure {
  const _ServerFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'mainFailure.serverFailure()';
}


}




// dart format on
