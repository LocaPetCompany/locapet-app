// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DropdownState implements DiagnosticableTreeMixin {

 List<dynamic> get availableItems; dynamic get selectedItem; List<dynamic>? get selectedItemList; String get hintText;
/// Create a copy of DropdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DropdownStateCopyWith<DropdownState> get copyWith => _$DropdownStateCopyWithImpl<DropdownState>(this as DropdownState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DropdownState'))
    ..add(DiagnosticsProperty('availableItems', availableItems))..add(DiagnosticsProperty('selectedItem', selectedItem))..add(DiagnosticsProperty('selectedItemList', selectedItemList))..add(DiagnosticsProperty('hintText', hintText));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DropdownState&&const DeepCollectionEquality().equals(other.availableItems, availableItems)&&const DeepCollectionEquality().equals(other.selectedItem, selectedItem)&&const DeepCollectionEquality().equals(other.selectedItemList, selectedItemList)&&(identical(other.hintText, hintText) || other.hintText == hintText));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(availableItems),const DeepCollectionEquality().hash(selectedItem),const DeepCollectionEquality().hash(selectedItemList),hintText);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DropdownState(availableItems: $availableItems, selectedItem: $selectedItem, selectedItemList: $selectedItemList, hintText: $hintText)';
}


}

/// @nodoc
abstract mixin class $DropdownStateCopyWith<$Res>  {
  factory $DropdownStateCopyWith(DropdownState value, $Res Function(DropdownState) _then) = _$DropdownStateCopyWithImpl;
@useResult
$Res call({
 List<dynamic> availableItems, dynamic selectedItem, List<dynamic>? selectedItemList, String hintText
});




}
/// @nodoc
class _$DropdownStateCopyWithImpl<$Res>
    implements $DropdownStateCopyWith<$Res> {
  _$DropdownStateCopyWithImpl(this._self, this._then);

  final DropdownState _self;
  final $Res Function(DropdownState) _then;

/// Create a copy of DropdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availableItems = null,Object? selectedItem = freezed,Object? selectedItemList = freezed,Object? hintText = null,}) {
  return _then(_self.copyWith(
availableItems: null == availableItems ? _self.availableItems : availableItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as dynamic,selectedItemList: freezed == selectedItemList ? _self.selectedItemList : selectedItemList // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hintText: null == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DropdownState].
extension DropdownStatePatterns on DropdownState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DropdownState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DropdownState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DropdownState value)  $default,){
final _that = this;
switch (_that) {
case _DropdownState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DropdownState value)?  $default,){
final _that = this;
switch (_that) {
case _DropdownState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<dynamic> availableItems,  dynamic selectedItem,  List<dynamic>? selectedItemList,  String hintText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DropdownState() when $default != null:
return $default(_that.availableItems,_that.selectedItem,_that.selectedItemList,_that.hintText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<dynamic> availableItems,  dynamic selectedItem,  List<dynamic>? selectedItemList,  String hintText)  $default,) {final _that = this;
switch (_that) {
case _DropdownState():
return $default(_that.availableItems,_that.selectedItem,_that.selectedItemList,_that.hintText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<dynamic> availableItems,  dynamic selectedItem,  List<dynamic>? selectedItemList,  String hintText)?  $default,) {final _that = this;
switch (_that) {
case _DropdownState() when $default != null:
return $default(_that.availableItems,_that.selectedItem,_that.selectedItemList,_that.hintText);case _:
  return null;

}
}

}

/// @nodoc


class _DropdownState with DiagnosticableTreeMixin implements DropdownState {
  const _DropdownState({required final  List<dynamic> availableItems, this.selectedItem, final  List<dynamic>? selectedItemList, required this.hintText}): _availableItems = availableItems,_selectedItemList = selectedItemList;
  

 final  List<dynamic> _availableItems;
@override List<dynamic> get availableItems {
  if (_availableItems is EqualUnmodifiableListView) return _availableItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableItems);
}

@override final  dynamic selectedItem;
 final  List<dynamic>? _selectedItemList;
@override List<dynamic>? get selectedItemList {
  final value = _selectedItemList;
  if (value == null) return null;
  if (_selectedItemList is EqualUnmodifiableListView) return _selectedItemList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String hintText;

/// Create a copy of DropdownState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DropdownStateCopyWith<_DropdownState> get copyWith => __$DropdownStateCopyWithImpl<_DropdownState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DropdownState'))
    ..add(DiagnosticsProperty('availableItems', availableItems))..add(DiagnosticsProperty('selectedItem', selectedItem))..add(DiagnosticsProperty('selectedItemList', selectedItemList))..add(DiagnosticsProperty('hintText', hintText));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DropdownState&&const DeepCollectionEquality().equals(other._availableItems, _availableItems)&&const DeepCollectionEquality().equals(other.selectedItem, selectedItem)&&const DeepCollectionEquality().equals(other._selectedItemList, _selectedItemList)&&(identical(other.hintText, hintText) || other.hintText == hintText));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_availableItems),const DeepCollectionEquality().hash(selectedItem),const DeepCollectionEquality().hash(_selectedItemList),hintText);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DropdownState(availableItems: $availableItems, selectedItem: $selectedItem, selectedItemList: $selectedItemList, hintText: $hintText)';
}


}

/// @nodoc
abstract mixin class _$DropdownStateCopyWith<$Res> implements $DropdownStateCopyWith<$Res> {
  factory _$DropdownStateCopyWith(_DropdownState value, $Res Function(_DropdownState) _then) = __$DropdownStateCopyWithImpl;
@override @useResult
$Res call({
 List<dynamic> availableItems, dynamic selectedItem, List<dynamic>? selectedItemList, String hintText
});




}
/// @nodoc
class __$DropdownStateCopyWithImpl<$Res>
    implements _$DropdownStateCopyWith<$Res> {
  __$DropdownStateCopyWithImpl(this._self, this._then);

  final _DropdownState _self;
  final $Res Function(_DropdownState) _then;

/// Create a copy of DropdownState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availableItems = null,Object? selectedItem = freezed,Object? selectedItemList = freezed,Object? hintText = null,}) {
  return _then(_DropdownState(
availableItems: null == availableItems ? _self._availableItems : availableItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as dynamic,selectedItemList: freezed == selectedItemList ? _self._selectedItemList : selectedItemList // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hintText: null == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
