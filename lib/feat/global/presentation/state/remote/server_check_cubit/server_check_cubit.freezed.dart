// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_check_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerCheckState implements DiagnosticableTreeMixin {

 AsyncState get asyncState; CurrentVersionResponseEntity? get currentVersion;
/// Create a copy of ServerCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCheckStateCopyWith<ServerCheckState> get copyWith => _$ServerCheckStateCopyWithImpl<ServerCheckState>(this as ServerCheckState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerCheckState'))
    ..add(DiagnosticsProperty('asyncState', asyncState))..add(DiagnosticsProperty('currentVersion', currentVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerCheckState&&(identical(other.asyncState, asyncState) || other.asyncState == asyncState)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion));
}


@override
int get hashCode => Object.hash(runtimeType,asyncState,currentVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerCheckState(asyncState: $asyncState, currentVersion: $currentVersion)';
}


}

/// @nodoc
abstract mixin class $ServerCheckStateCopyWith<$Res>  {
  factory $ServerCheckStateCopyWith(ServerCheckState value, $Res Function(ServerCheckState) _then) = _$ServerCheckStateCopyWithImpl;
@useResult
$Res call({
 AsyncState asyncState, CurrentVersionResponseEntity? currentVersion
});


$CurrentVersionResponseEntityCopyWith<$Res>? get currentVersion;

}
/// @nodoc
class _$ServerCheckStateCopyWithImpl<$Res>
    implements $ServerCheckStateCopyWith<$Res> {
  _$ServerCheckStateCopyWithImpl(this._self, this._then);

  final ServerCheckState _self;
  final $Res Function(ServerCheckState) _then;

/// Create a copy of ServerCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asyncState = null,Object? currentVersion = freezed,}) {
  return _then(_self.copyWith(
asyncState: null == asyncState ? _self.asyncState : asyncState // ignore: cast_nullable_to_non_nullable
as AsyncState,currentVersion: freezed == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as CurrentVersionResponseEntity?,
  ));
}
/// Create a copy of ServerCheckState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentVersionResponseEntityCopyWith<$Res>? get currentVersion {
    if (_self.currentVersion == null) {
    return null;
  }

  return $CurrentVersionResponseEntityCopyWith<$Res>(_self.currentVersion!, (value) {
    return _then(_self.copyWith(currentVersion: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServerCheckState].
extension ServerCheckStatePatterns on ServerCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerCheckState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerCheckState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerCheckState value)  $default,){
final _that = this;
switch (_that) {
case _ServerCheckState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerCheckState value)?  $default,){
final _that = this;
switch (_that) {
case _ServerCheckState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncState asyncState,  CurrentVersionResponseEntity? currentVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerCheckState() when $default != null:
return $default(_that.asyncState,_that.currentVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncState asyncState,  CurrentVersionResponseEntity? currentVersion)  $default,) {final _that = this;
switch (_that) {
case _ServerCheckState():
return $default(_that.asyncState,_that.currentVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncState asyncState,  CurrentVersionResponseEntity? currentVersion)?  $default,) {final _that = this;
switch (_that) {
case _ServerCheckState() when $default != null:
return $default(_that.asyncState,_that.currentVersion);case _:
  return null;

}
}

}

/// @nodoc


class _ServerCheckState with DiagnosticableTreeMixin implements ServerCheckState {
  const _ServerCheckState({this.asyncState = AsyncState.initial, this.currentVersion});
  

@override@JsonKey() final  AsyncState asyncState;
@override final  CurrentVersionResponseEntity? currentVersion;

/// Create a copy of ServerCheckState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerCheckStateCopyWith<_ServerCheckState> get copyWith => __$ServerCheckStateCopyWithImpl<_ServerCheckState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerCheckState'))
    ..add(DiagnosticsProperty('asyncState', asyncState))..add(DiagnosticsProperty('currentVersion', currentVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerCheckState&&(identical(other.asyncState, asyncState) || other.asyncState == asyncState)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion));
}


@override
int get hashCode => Object.hash(runtimeType,asyncState,currentVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerCheckState(asyncState: $asyncState, currentVersion: $currentVersion)';
}


}

/// @nodoc
abstract mixin class _$ServerCheckStateCopyWith<$Res> implements $ServerCheckStateCopyWith<$Res> {
  factory _$ServerCheckStateCopyWith(_ServerCheckState value, $Res Function(_ServerCheckState) _then) = __$ServerCheckStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncState asyncState, CurrentVersionResponseEntity? currentVersion
});


@override $CurrentVersionResponseEntityCopyWith<$Res>? get currentVersion;

}
/// @nodoc
class __$ServerCheckStateCopyWithImpl<$Res>
    implements _$ServerCheckStateCopyWith<$Res> {
  __$ServerCheckStateCopyWithImpl(this._self, this._then);

  final _ServerCheckState _self;
  final $Res Function(_ServerCheckState) _then;

/// Create a copy of ServerCheckState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asyncState = null,Object? currentVersion = freezed,}) {
  return _then(_ServerCheckState(
asyncState: null == asyncState ? _self.asyncState : asyncState // ignore: cast_nullable_to_non_nullable
as AsyncState,currentVersion: freezed == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as CurrentVersionResponseEntity?,
  ));
}

/// Create a copy of ServerCheckState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentVersionResponseEntityCopyWith<$Res>? get currentVersion {
    if (_self.currentVersion == null) {
    return null;
  }

  return $CurrentVersionResponseEntityCopyWith<$Res>(_self.currentVersion!, (value) {
    return _then(_self.copyWith(currentVersion: value));
  });
}
}

// dart format on
