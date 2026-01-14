// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_text_field_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommonTextFieldState implements DiagnosticableTreeMixin {

 String get text; String? get error; bool get isEnabled; bool get isFocused; String? get guideText; String? get hintText;
/// Create a copy of CommonTextFieldState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonTextFieldStateCopyWith<CommonTextFieldState> get copyWith => _$CommonTextFieldStateCopyWithImpl<CommonTextFieldState>(this as CommonTextFieldState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommonTextFieldState'))
    ..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('isEnabled', isEnabled))..add(DiagnosticsProperty('isFocused', isFocused))..add(DiagnosticsProperty('guideText', guideText))..add(DiagnosticsProperty('hintText', hintText));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonTextFieldState&&(identical(other.text, text) || other.text == text)&&(identical(other.error, error) || other.error == error)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.isFocused, isFocused) || other.isFocused == isFocused)&&(identical(other.guideText, guideText) || other.guideText == guideText)&&(identical(other.hintText, hintText) || other.hintText == hintText));
}


@override
int get hashCode => Object.hash(runtimeType,text,error,isEnabled,isFocused,guideText,hintText);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommonTextFieldState(text: $text, error: $error, isEnabled: $isEnabled, isFocused: $isFocused, guideText: $guideText, hintText: $hintText)';
}


}

/// @nodoc
abstract mixin class $CommonTextFieldStateCopyWith<$Res>  {
  factory $CommonTextFieldStateCopyWith(CommonTextFieldState value, $Res Function(CommonTextFieldState) _then) = _$CommonTextFieldStateCopyWithImpl;
@useResult
$Res call({
 String text, String? error, bool isEnabled, bool isFocused, String? guideText, String? hintText
});




}
/// @nodoc
class _$CommonTextFieldStateCopyWithImpl<$Res>
    implements $CommonTextFieldStateCopyWith<$Res> {
  _$CommonTextFieldStateCopyWithImpl(this._self, this._then);

  final CommonTextFieldState _self;
  final $Res Function(CommonTextFieldState) _then;

/// Create a copy of CommonTextFieldState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? error = freezed,Object? isEnabled = null,Object? isFocused = null,Object? guideText = freezed,Object? hintText = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,isFocused: null == isFocused ? _self.isFocused : isFocused // ignore: cast_nullable_to_non_nullable
as bool,guideText: freezed == guideText ? _self.guideText : guideText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonTextFieldState].
extension CommonTextFieldStatePatterns on CommonTextFieldState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonTextFieldState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonTextFieldState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonTextFieldState value)  $default,){
final _that = this;
switch (_that) {
case _CommonTextFieldState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonTextFieldState value)?  $default,){
final _that = this;
switch (_that) {
case _CommonTextFieldState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String? error,  bool isEnabled,  bool isFocused,  String? guideText,  String? hintText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonTextFieldState() when $default != null:
return $default(_that.text,_that.error,_that.isEnabled,_that.isFocused,_that.guideText,_that.hintText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String? error,  bool isEnabled,  bool isFocused,  String? guideText,  String? hintText)  $default,) {final _that = this;
switch (_that) {
case _CommonTextFieldState():
return $default(_that.text,_that.error,_that.isEnabled,_that.isFocused,_that.guideText,_that.hintText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String? error,  bool isEnabled,  bool isFocused,  String? guideText,  String? hintText)?  $default,) {final _that = this;
switch (_that) {
case _CommonTextFieldState() when $default != null:
return $default(_that.text,_that.error,_that.isEnabled,_that.isFocused,_that.guideText,_that.hintText);case _:
  return null;

}
}

}

/// @nodoc


class _CommonTextFieldState with DiagnosticableTreeMixin implements CommonTextFieldState {
  const _CommonTextFieldState({this.text = '', this.error, this.isEnabled = true, this.isFocused = false, this.guideText, this.hintText});
  

@override@JsonKey() final  String text;
@override final  String? error;
@override@JsonKey() final  bool isEnabled;
@override@JsonKey() final  bool isFocused;
@override final  String? guideText;
@override final  String? hintText;

/// Create a copy of CommonTextFieldState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonTextFieldStateCopyWith<_CommonTextFieldState> get copyWith => __$CommonTextFieldStateCopyWithImpl<_CommonTextFieldState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommonTextFieldState'))
    ..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('isEnabled', isEnabled))..add(DiagnosticsProperty('isFocused', isFocused))..add(DiagnosticsProperty('guideText', guideText))..add(DiagnosticsProperty('hintText', hintText));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonTextFieldState&&(identical(other.text, text) || other.text == text)&&(identical(other.error, error) || other.error == error)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.isFocused, isFocused) || other.isFocused == isFocused)&&(identical(other.guideText, guideText) || other.guideText == guideText)&&(identical(other.hintText, hintText) || other.hintText == hintText));
}


@override
int get hashCode => Object.hash(runtimeType,text,error,isEnabled,isFocused,guideText,hintText);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommonTextFieldState(text: $text, error: $error, isEnabled: $isEnabled, isFocused: $isFocused, guideText: $guideText, hintText: $hintText)';
}


}

/// @nodoc
abstract mixin class _$CommonTextFieldStateCopyWith<$Res> implements $CommonTextFieldStateCopyWith<$Res> {
  factory _$CommonTextFieldStateCopyWith(_CommonTextFieldState value, $Res Function(_CommonTextFieldState) _then) = __$CommonTextFieldStateCopyWithImpl;
@override @useResult
$Res call({
 String text, String? error, bool isEnabled, bool isFocused, String? guideText, String? hintText
});




}
/// @nodoc
class __$CommonTextFieldStateCopyWithImpl<$Res>
    implements _$CommonTextFieldStateCopyWith<$Res> {
  __$CommonTextFieldStateCopyWithImpl(this._self, this._then);

  final _CommonTextFieldState _self;
  final $Res Function(_CommonTextFieldState) _then;

/// Create a copy of CommonTextFieldState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? error = freezed,Object? isEnabled = null,Object? isFocused = null,Object? guideText = freezed,Object? hintText = freezed,}) {
  return _then(_CommonTextFieldState(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,isFocused: null == isFocused ? _self.isFocused : isFocused // ignore: cast_nullable_to_non_nullable
as bool,guideText: freezed == guideText ? _self.guideText : guideText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
