// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll_pet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnrollPetState implements DiagnosticableTreeMixin {

 String get name; PetType get petType; String get petGender; String get petBirth; String get petWeight; File? get petImage;
/// Create a copy of EnrollPetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollPetStateCopyWith<EnrollPetState> get copyWith => _$EnrollPetStateCopyWithImpl<EnrollPetState>(this as EnrollPetState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EnrollPetState'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('petType', petType))..add(DiagnosticsProperty('petGender', petGender))..add(DiagnosticsProperty('petBirth', petBirth))..add(DiagnosticsProperty('petWeight', petWeight))..add(DiagnosticsProperty('petImage', petImage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollPetState&&(identical(other.name, name) || other.name == name)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.petGender, petGender) || other.petGender == petGender)&&(identical(other.petBirth, petBirth) || other.petBirth == petBirth)&&(identical(other.petWeight, petWeight) || other.petWeight == petWeight)&&(identical(other.petImage, petImage) || other.petImage == petImage));
}


@override
int get hashCode => Object.hash(runtimeType,name,petType,petGender,petBirth,petWeight,petImage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EnrollPetState(name: $name, petType: $petType, petGender: $petGender, petBirth: $petBirth, petWeight: $petWeight, petImage: $petImage)';
}


}

/// @nodoc
abstract mixin class $EnrollPetStateCopyWith<$Res>  {
  factory $EnrollPetStateCopyWith(EnrollPetState value, $Res Function(EnrollPetState) _then) = _$EnrollPetStateCopyWithImpl;
@useResult
$Res call({
 String name, PetType petType, String petGender, String petBirth, String petWeight, File? petImage
});




}
/// @nodoc
class _$EnrollPetStateCopyWithImpl<$Res>
    implements $EnrollPetStateCopyWith<$Res> {
  _$EnrollPetStateCopyWithImpl(this._self, this._then);

  final EnrollPetState _self;
  final $Res Function(EnrollPetState) _then;

/// Create a copy of EnrollPetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? petType = null,Object? petGender = null,Object? petBirth = null,Object? petWeight = null,Object? petImage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as PetType,petGender: null == petGender ? _self.petGender : petGender // ignore: cast_nullable_to_non_nullable
as String,petBirth: null == petBirth ? _self.petBirth : petBirth // ignore: cast_nullable_to_non_nullable
as String,petWeight: null == petWeight ? _self.petWeight : petWeight // ignore: cast_nullable_to_non_nullable
as String,petImage: freezed == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollPetState].
extension EnrollPetStatePatterns on EnrollPetState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollPetState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollPetState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollPetState value)  $default,){
final _that = this;
switch (_that) {
case _EnrollPetState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollPetState value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollPetState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  PetType petType,  String petGender,  String petBirth,  String petWeight,  File? petImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollPetState() when $default != null:
return $default(_that.name,_that.petType,_that.petGender,_that.petBirth,_that.petWeight,_that.petImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  PetType petType,  String petGender,  String petBirth,  String petWeight,  File? petImage)  $default,) {final _that = this;
switch (_that) {
case _EnrollPetState():
return $default(_that.name,_that.petType,_that.petGender,_that.petBirth,_that.petWeight,_that.petImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  PetType petType,  String petGender,  String petBirth,  String petWeight,  File? petImage)?  $default,) {final _that = this;
switch (_that) {
case _EnrollPetState() when $default != null:
return $default(_that.name,_that.petType,_that.petGender,_that.petBirth,_that.petWeight,_that.petImage);case _:
  return null;

}
}

}

/// @nodoc


class _EnrollPetState with DiagnosticableTreeMixin implements EnrollPetState {
  const _EnrollPetState({this.name = '', this.petType = PetType.dog, this.petGender = '', this.petBirth = '', this.petWeight = '', this.petImage});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  PetType petType;
@override@JsonKey() final  String petGender;
@override@JsonKey() final  String petBirth;
@override@JsonKey() final  String petWeight;
@override final  File? petImage;

/// Create a copy of EnrollPetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollPetStateCopyWith<_EnrollPetState> get copyWith => __$EnrollPetStateCopyWithImpl<_EnrollPetState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EnrollPetState'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('petType', petType))..add(DiagnosticsProperty('petGender', petGender))..add(DiagnosticsProperty('petBirth', petBirth))..add(DiagnosticsProperty('petWeight', petWeight))..add(DiagnosticsProperty('petImage', petImage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollPetState&&(identical(other.name, name) || other.name == name)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.petGender, petGender) || other.petGender == petGender)&&(identical(other.petBirth, petBirth) || other.petBirth == petBirth)&&(identical(other.petWeight, petWeight) || other.petWeight == petWeight)&&(identical(other.petImage, petImage) || other.petImage == petImage));
}


@override
int get hashCode => Object.hash(runtimeType,name,petType,petGender,petBirth,petWeight,petImage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EnrollPetState(name: $name, petType: $petType, petGender: $petGender, petBirth: $petBirth, petWeight: $petWeight, petImage: $petImage)';
}


}

/// @nodoc
abstract mixin class _$EnrollPetStateCopyWith<$Res> implements $EnrollPetStateCopyWith<$Res> {
  factory _$EnrollPetStateCopyWith(_EnrollPetState value, $Res Function(_EnrollPetState) _then) = __$EnrollPetStateCopyWithImpl;
@override @useResult
$Res call({
 String name, PetType petType, String petGender, String petBirth, String petWeight, File? petImage
});




}
/// @nodoc
class __$EnrollPetStateCopyWithImpl<$Res>
    implements _$EnrollPetStateCopyWith<$Res> {
  __$EnrollPetStateCopyWithImpl(this._self, this._then);

  final _EnrollPetState _self;
  final $Res Function(_EnrollPetState) _then;

/// Create a copy of EnrollPetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? petType = null,Object? petGender = null,Object? petBirth = null,Object? petWeight = null,Object? petImage = freezed,}) {
  return _then(_EnrollPetState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as PetType,petGender: null == petGender ? _self.petGender : petGender // ignore: cast_nullable_to_non_nullable
as String,petBirth: null == petBirth ? _self.petBirth : petBirth // ignore: cast_nullable_to_non_nullable
as String,petWeight: null == petWeight ? _self.petWeight : petWeight // ignore: cast_nullable_to_non_nullable
as String,petImage: freezed == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
