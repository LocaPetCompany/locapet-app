part of 'common_text_field_cubit.dart';

@freezed
abstract class CommonTextFieldState with _$CommonTextFieldState {
  const factory CommonTextFieldState({
    @Default('') String text,
    String? error,
    @Default(true) bool isEnabled,
    @Default(false) bool isFocused,
    String? guideText,
    String? hintText,
  }) = _CommonTextFieldState;
}
