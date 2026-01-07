// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialLoginState implements DiagnosticableTreeMixin {

 bool get isLoggedIn;
/// Create a copy of SocialLoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLoginStateCopyWith<SocialLoginState> get copyWith => _$SocialLoginStateCopyWithImpl<SocialLoginState>(this as SocialLoginState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SocialLoginState'))
    ..add(DiagnosticsProperty('isLoggedIn', isLoggedIn));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLoginState&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn));
}


@override
int get hashCode => Object.hash(runtimeType,isLoggedIn);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SocialLoginState(isLoggedIn: $isLoggedIn)';
}


}

/// @nodoc
abstract mixin class $SocialLoginStateCopyWith<$Res>  {
  factory $SocialLoginStateCopyWith(SocialLoginState value, $Res Function(SocialLoginState) _then) = _$SocialLoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoggedIn
});




}
/// @nodoc
class _$SocialLoginStateCopyWithImpl<$Res>
    implements $SocialLoginStateCopyWith<$Res> {
  _$SocialLoginStateCopyWithImpl(this._self, this._then);

  final SocialLoginState _self;
  final $Res Function(SocialLoginState) _then;

/// Create a copy of SocialLoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoggedIn = null,}) {
  return _then(_self.copyWith(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialLoginState].
extension SocialLoginStatePatterns on SocialLoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialLoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialLoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialLoginState value)  $default,){
final _that = this;
switch (_that) {
case _SocialLoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialLoginState value)?  $default,){
final _that = this;
switch (_that) {
case _SocialLoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoggedIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialLoginState() when $default != null:
return $default(_that.isLoggedIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoggedIn)  $default,) {final _that = this;
switch (_that) {
case _SocialLoginState():
return $default(_that.isLoggedIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoggedIn)?  $default,) {final _that = this;
switch (_that) {
case _SocialLoginState() when $default != null:
return $default(_that.isLoggedIn);case _:
  return null;

}
}

}

/// @nodoc


class _SocialLoginState with DiagnosticableTreeMixin implements SocialLoginState {
  const _SocialLoginState({this.isLoggedIn = false});
  

@override@JsonKey() final  bool isLoggedIn;

/// Create a copy of SocialLoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLoginStateCopyWith<_SocialLoginState> get copyWith => __$SocialLoginStateCopyWithImpl<_SocialLoginState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SocialLoginState'))
    ..add(DiagnosticsProperty('isLoggedIn', isLoggedIn));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLoginState&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn));
}


@override
int get hashCode => Object.hash(runtimeType,isLoggedIn);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SocialLoginState(isLoggedIn: $isLoggedIn)';
}


}

/// @nodoc
abstract mixin class _$SocialLoginStateCopyWith<$Res> implements $SocialLoginStateCopyWith<$Res> {
  factory _$SocialLoginStateCopyWith(_SocialLoginState value, $Res Function(_SocialLoginState) _then) = __$SocialLoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoggedIn
});




}
/// @nodoc
class __$SocialLoginStateCopyWithImpl<$Res>
    implements _$SocialLoginStateCopyWith<$Res> {
  __$SocialLoginStateCopyWithImpl(this._self, this._then);

  final _SocialLoginState _self;
  final $Res Function(_SocialLoginState) _then;

/// Create a copy of SocialLoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoggedIn = null,}) {
  return _then(_SocialLoginState(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
