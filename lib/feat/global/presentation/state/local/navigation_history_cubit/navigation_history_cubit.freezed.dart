// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationHistoryState {

 List<int> get history;
/// Create a copy of NavigationHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationHistoryStateCopyWith<NavigationHistoryState> get copyWith => _$NavigationHistoryStateCopyWithImpl<NavigationHistoryState>(this as NavigationHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationHistoryState&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'NavigationHistoryState(history: $history)';
}


}

/// @nodoc
abstract mixin class $NavigationHistoryStateCopyWith<$Res>  {
  factory $NavigationHistoryStateCopyWith(NavigationHistoryState value, $Res Function(NavigationHistoryState) _then) = _$NavigationHistoryStateCopyWithImpl;
@useResult
$Res call({
 List<int> history
});




}
/// @nodoc
class _$NavigationHistoryStateCopyWithImpl<$Res>
    implements $NavigationHistoryStateCopyWith<$Res> {
  _$NavigationHistoryStateCopyWithImpl(this._self, this._then);

  final NavigationHistoryState _self;
  final $Res Function(NavigationHistoryState) _then;

/// Create a copy of NavigationHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? history = null,}) {
  return _then(_self.copyWith(
history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigationHistoryState].
extension NavigationHistoryStatePatterns on NavigationHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavigationHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavigationHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavigationHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _NavigationHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavigationHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _NavigationHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavigationHistoryState() when $default != null:
return $default(_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> history)  $default,) {final _that = this;
switch (_that) {
case _NavigationHistoryState():
return $default(_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> history)?  $default,) {final _that = this;
switch (_that) {
case _NavigationHistoryState() when $default != null:
return $default(_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _NavigationHistoryState implements NavigationHistoryState {
  const _NavigationHistoryState({required final  List<int> history}): _history = history;
  

 final  List<int> _history;
@override List<int> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of NavigationHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationHistoryStateCopyWith<_NavigationHistoryState> get copyWith => __$NavigationHistoryStateCopyWithImpl<_NavigationHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationHistoryState&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'NavigationHistoryState(history: $history)';
}


}

/// @nodoc
abstract mixin class _$NavigationHistoryStateCopyWith<$Res> implements $NavigationHistoryStateCopyWith<$Res> {
  factory _$NavigationHistoryStateCopyWith(_NavigationHistoryState value, $Res Function(_NavigationHistoryState) _then) = __$NavigationHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<int> history
});




}
/// @nodoc
class __$NavigationHistoryStateCopyWithImpl<$Res>
    implements _$NavigationHistoryStateCopyWith<$Res> {
  __$NavigationHistoryStateCopyWithImpl(this._self, this._then);

  final _NavigationHistoryState _self;
  final $Res Function(_NavigationHistoryState) _then;

/// Create a copy of NavigationHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? history = null,}) {
  return _then(_NavigationHistoryState(
history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
