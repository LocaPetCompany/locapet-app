import 'package:locapet/export/package.dart';

part 'common_text_field_cubit.freezed.dart';
part 'common_text_field_state.dart';

class CommonTextFieldCubit extends Cubit<CommonTextFieldState> {
  CommonTextFieldCubit({
    String? hintText,
    String? guideText,
    bool isEnabled = true,
  }) : super(
         CommonTextFieldState(
           hintText: hintText,
           guideText: guideText,
           isEnabled: isEnabled,
         ),
       );

  void setText(String text) {
    emit(state.copyWith(text: text));
  }

  void clearText() {
    emit(state.copyWith(text: ''));
  }

  void setError(String? error) {
    emit(state.copyWith(error: error));
  }

  void setEnabled(bool isEnabled) {
    emit(state.copyWith(isEnabled: isEnabled));
  }

  void setGuideText(String? guideText) {
    emit(state.copyWith(guideText: guideText));
  }

  void setFocused(bool isFocused) {
    emit(state.copyWith(isFocused: isFocused));
  }
}
