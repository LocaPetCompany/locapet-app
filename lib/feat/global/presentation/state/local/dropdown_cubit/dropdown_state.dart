part of 'dropdown_cubit.dart';

@freezed
abstract class DropdownState with _$DropdownState {
  const factory DropdownState({
    required List<dynamic> availableItems,
    dynamic selectedItem,
    List<dynamic>? selectedItemList,
    required String hintText,
  }) = _DropdownState;
}
