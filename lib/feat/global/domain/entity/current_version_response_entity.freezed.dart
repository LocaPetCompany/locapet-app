// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_version_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentVersionResponseEntity implements DiagnosticableTreeMixin {

 String get serverStatus; String get version;
/// Create a copy of CurrentVersionResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentVersionResponseEntityCopyWith<CurrentVersionResponseEntity> get copyWith => _$CurrentVersionResponseEntityCopyWithImpl<CurrentVersionResponseEntity>(this as CurrentVersionResponseEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CurrentVersionResponseEntity'))
    ..add(DiagnosticsProperty('serverStatus', serverStatus))..add(DiagnosticsProperty('version', version));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentVersionResponseEntity&&(identical(other.serverStatus, serverStatus) || other.serverStatus == serverStatus)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,serverStatus,version);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CurrentVersionResponseEntity(serverStatus: $serverStatus, version: $version)';
}


}

/// @nodoc
abstract mixin class $CurrentVersionResponseEntityCopyWith<$Res>  {
  factory $CurrentVersionResponseEntityCopyWith(CurrentVersionResponseEntity value, $Res Function(CurrentVersionResponseEntity) _then) = _$CurrentVersionResponseEntityCopyWithImpl;
@useResult
$Res call({
 String serverStatus, String version
});




}
/// @nodoc
class _$CurrentVersionResponseEntityCopyWithImpl<$Res>
    implements $CurrentVersionResponseEntityCopyWith<$Res> {
  _$CurrentVersionResponseEntityCopyWithImpl(this._self, this._then);

  final CurrentVersionResponseEntity _self;
  final $Res Function(CurrentVersionResponseEntity) _then;

/// Create a copy of CurrentVersionResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serverStatus = null,Object? version = null,}) {
  return _then(_self.copyWith(
serverStatus: null == serverStatus ? _self.serverStatus : serverStatus // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentVersionResponseEntity].
extension CurrentVersionResponseEntityPatterns on CurrentVersionResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentVersionResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentVersionResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentVersionResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _CurrentVersionResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentVersionResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentVersionResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serverStatus,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentVersionResponseEntity() when $default != null:
return $default(_that.serverStatus,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serverStatus,  String version)  $default,) {final _that = this;
switch (_that) {
case _CurrentVersionResponseEntity():
return $default(_that.serverStatus,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serverStatus,  String version)?  $default,) {final _that = this;
switch (_that) {
case _CurrentVersionResponseEntity() when $default != null:
return $default(_that.serverStatus,_that.version);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentVersionResponseEntity with DiagnosticableTreeMixin implements CurrentVersionResponseEntity {
  const _CurrentVersionResponseEntity({required this.serverStatus, required this.version});
  

@override final  String serverStatus;
@override final  String version;

/// Create a copy of CurrentVersionResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentVersionResponseEntityCopyWith<_CurrentVersionResponseEntity> get copyWith => __$CurrentVersionResponseEntityCopyWithImpl<_CurrentVersionResponseEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CurrentVersionResponseEntity'))
    ..add(DiagnosticsProperty('serverStatus', serverStatus))..add(DiagnosticsProperty('version', version));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentVersionResponseEntity&&(identical(other.serverStatus, serverStatus) || other.serverStatus == serverStatus)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,serverStatus,version);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CurrentVersionResponseEntity(serverStatus: $serverStatus, version: $version)';
}


}

/// @nodoc
abstract mixin class _$CurrentVersionResponseEntityCopyWith<$Res> implements $CurrentVersionResponseEntityCopyWith<$Res> {
  factory _$CurrentVersionResponseEntityCopyWith(_CurrentVersionResponseEntity value, $Res Function(_CurrentVersionResponseEntity) _then) = __$CurrentVersionResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String serverStatus, String version
});




}
/// @nodoc
class __$CurrentVersionResponseEntityCopyWithImpl<$Res>
    implements _$CurrentVersionResponseEntityCopyWith<$Res> {
  __$CurrentVersionResponseEntityCopyWithImpl(this._self, this._then);

  final _CurrentVersionResponseEntity _self;
  final $Res Function(_CurrentVersionResponseEntity) _then;

/// Create a copy of CurrentVersionResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serverStatus = null,Object? version = null,}) {
  return _then(_CurrentVersionResponseEntity(
serverStatus: null == serverStatus ? _self.serverStatus : serverStatus // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
