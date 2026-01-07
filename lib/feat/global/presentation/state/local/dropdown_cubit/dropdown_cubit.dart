import 'package:locapet/export/package.dart';

part 'dropdown_cubit.freezed.dart';
part 'dropdown_state.dart';

class DropdownCubit extends Cubit<DropdownState> {
  DropdownCubit({
    required String hintText,
    required List<dynamic> availableItems,
    required dynamic initialSelectedItem,
  }) : super(
         DropdownState(
           hintText: hintText,
           availableItems: List.from(availableItems),
           selectedItem: initialSelectedItem,
         ),
       );

  void selectItem(dynamic item) {
    emit(state.copyWith(selectedItem: item));
  }
}
