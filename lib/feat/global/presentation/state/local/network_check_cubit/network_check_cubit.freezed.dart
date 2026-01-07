// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_check_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkCheckState implements DiagnosticableTreeMixin {

 ConnectivityResult get connectivityResult; bool get isErrorPushed;
/// Create a copy of NetworkCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkCheckStateCopyWith<NetworkCheckState> get copyWith => _$NetworkCheckStateCopyWithImpl<NetworkCheckState>(this as NetworkCheckState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NetworkCheckState'))
    ..add(DiagnosticsProperty('connectivityResult', connectivityResult))..add(DiagnosticsProperty('isErrorPushed', isErrorPushed));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkCheckState&&(identical(other.connectivityResult, connectivityResult) || other.connectivityResult == connectivityResult)&&(identical(other.isErrorPushed, isErrorPushed) || other.isErrorPushed == isErrorPushed));
}


@override
int get hashCode => Object.hash(runtimeType,connectivityResult,isErrorPushed);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NetworkCheckState(connectivityResult: $connectivityResult, isErrorPushed: $isErrorPushed)';
}


}

/// @nodoc
abstract mixin class $NetworkCheckStateCopyWith<$Res>  {
  factory $NetworkCheckStateCopyWith(NetworkCheckState value, $Res Function(NetworkCheckState) _then) = _$NetworkCheckStateCopyWithImpl;
@useResult
$Res call({
 ConnectivityResult connectivityResult, bool isErrorPushed
});




}
/// @nodoc
class _$NetworkCheckStateCopyWithImpl<$Res>
    implements $NetworkCheckStateCopyWith<$Res> {
  _$NetworkCheckStateCopyWithImpl(this._self, this._then);

  final NetworkCheckState _self;
  final $Res Function(NetworkCheckState) _then;

/// Create a copy of NetworkCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connectivityResult = null,Object? isErrorPushed = null,}) {
  return _then(_self.copyWith(
connectivityResult: null == connectivityResult ? _self.connectivityResult : connectivityResult // ignore: cast_nullable_to_non_nullable
as ConnectivityResult,isErrorPushed: null == isErrorPushed ? _self.isErrorPushed : isErrorPushed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkCheckState].
extension NetworkCheckStatePatterns on NetworkCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkCheckState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkCheckState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkCheckState value)  $default,){
final _that = this;
switch (_that) {
case _NetworkCheckState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkCheckState value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkCheckState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ConnectivityResult connectivityResult,  bool isErrorPushed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkCheckState() when $default != null:
return $default(_that.connectivityResult,_that.isErrorPushed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ConnectivityResult connectivityResult,  bool isErrorPushed)  $default,) {final _that = this;
switch (_that) {
case _NetworkCheckState():
return $default(_that.connectivityResult,_that.isErrorPushed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ConnectivityResult connectivityResult,  bool isErrorPushed)?  $default,) {final _that = this;
switch (_that) {
case _NetworkCheckState() when $default != null:
return $default(_that.connectivityResult,_that.isErrorPushed);case _:
  return null;

}
}

}

/// @nodoc


class _NetworkCheckState with DiagnosticableTreeMixin implements NetworkCheckState {
  const _NetworkCheckState({this.connectivityResult = ConnectivityResult.none, this.isErrorPushed = false});
  

@override@JsonKey() final  ConnectivityResult connectivityResult;
@override@JsonKey() final  bool isErrorPushed;

/// Create a copy of NetworkCheckState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkCheckStateCopyWith<_NetworkCheckState> get copyWith => __$NetworkCheckStateCopyWithImpl<_NetworkCheckState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NetworkCheckState'))
    ..add(DiagnosticsProperty('connectivityResult', connectivityResult))..add(DiagnosticsProperty('isErrorPushed', isErrorPushed));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkCheckState&&(identical(other.connectivityResult, connectivityResult) || other.connectivityResult == connectivityResult)&&(identical(other.isErrorPushed, isErrorPushed) || other.isErrorPushed == isErrorPushed));
}


@override
int get hashCode => Object.hash(runtimeType,connectivityResult,isErrorPushed);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NetworkCheckState(connectivityResult: $connectivityResult, isErrorPushed: $isErrorPushed)';
}


}

/// @nodoc
abstract mixin class _$NetworkCheckStateCopyWith<$Res> implements $NetworkCheckStateCopyWith<$Res> {
  factory _$NetworkCheckStateCopyWith(_NetworkCheckState value, $Res Function(_NetworkCheckState) _then) = __$NetworkCheckStateCopyWithImpl;
@override @useResult
$Res call({
 ConnectivityResult connectivityResult, bool isErrorPushed
});




}
/// @nodoc
class __$NetworkCheckStateCopyWithImpl<$Res>
    implements _$NetworkCheckStateCopyWith<$Res> {
  __$NetworkCheckStateCopyWithImpl(this._self, this._then);

  final _NetworkCheckState _self;
  final $Res Function(_NetworkCheckState) _then;

/// Create a copy of NetworkCheckState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connectivityResult = null,Object? isErrorPushed = null,}) {
  return _then(_NetworkCheckState(
connectivityResult: null == connectivityResult ? _self.connectivityResult : connectivityResult // ignore: cast_nullable_to_non_nullable
as ConnectivityResult,isErrorPushed: null == isErrorPushed ? _self.isErrorPushed : isErrorPushed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
