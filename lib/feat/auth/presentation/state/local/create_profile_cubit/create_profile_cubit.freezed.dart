// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateProfileState {

 File? get profileImage;
/// Create a copy of CreateProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProfileStateCopyWith<CreateProfileState> get copyWith => _$CreateProfileStateCopyWithImpl<CreateProfileState>(this as CreateProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProfileState&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}


@override
int get hashCode => Object.hash(runtimeType,profileImage);

@override
String toString() {
  return 'CreateProfileState(profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class $CreateProfileStateCopyWith<$Res>  {
  factory $CreateProfileStateCopyWith(CreateProfileState value, $Res Function(CreateProfileState) _then) = _$CreateProfileStateCopyWithImpl;
@useResult
$Res call({
 File? profileImage
});




}
/// @nodoc
class _$CreateProfileStateCopyWithImpl<$Res>
    implements $CreateProfileStateCopyWith<$Res> {
  _$CreateProfileStateCopyWithImpl(this._self, this._then);

  final CreateProfileState _self;
  final $Res Function(CreateProfileState) _then;

/// Create a copy of CreateProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileImage = freezed,}) {
  return _then(_self.copyWith(
profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProfileState].
extension CreateProfileStatePatterns on CreateProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProfileState value)  $default,){
final _that = this;
switch (_that) {
case _CreateProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( File? profileImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProfileState() when $default != null:
return $default(_that.profileImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( File? profileImage)  $default,) {final _that = this;
switch (_that) {
case _CreateProfileState():
return $default(_that.profileImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( File? profileImage)?  $default,) {final _that = this;
switch (_that) {
case _CreateProfileState() when $default != null:
return $default(_that.profileImage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateProfileState implements CreateProfileState {
  const _CreateProfileState({this.profileImage});
  

@override final  File? profileImage;

/// Create a copy of CreateProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProfileStateCopyWith<_CreateProfileState> get copyWith => __$CreateProfileStateCopyWithImpl<_CreateProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProfileState&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}


@override
int get hashCode => Object.hash(runtimeType,profileImage);

@override
String toString() {
  return 'CreateProfileState(profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class _$CreateProfileStateCopyWith<$Res> implements $CreateProfileStateCopyWith<$Res> {
  factory _$CreateProfileStateCopyWith(_CreateProfileState value, $Res Function(_CreateProfileState) _then) = __$CreateProfileStateCopyWithImpl;
@override @useResult
$Res call({
 File? profileImage
});




}
/// @nodoc
class __$CreateProfileStateCopyWithImpl<$Res>
    implements _$CreateProfileStateCopyWith<$Res> {
  __$CreateProfileStateCopyWithImpl(this._self, this._then);

  final _CreateProfileState _self;
  final $Res Function(_CreateProfileState) _then;

/// Create a copy of CreateProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileImage = freezed,}) {
  return _then(_CreateProfileState(
profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
