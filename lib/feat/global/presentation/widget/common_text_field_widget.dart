import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';
import 'package:locapet/feat/global/presentation/state/local/common_text_field_cubit/common_text_field_cubit.dart';

class CommonTextField extends StatefulWidget {
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? maxLines;
  final TextInputAction? textInputAction;

  const CommonTextField({
    super.key,
    this.keyboardType,
    this.obscureText = false,
    this.maxLines = 1,
    this.textInputAction,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldWidgetState();
}

class _CommonTextFieldWidgetState extends State<CommonTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: context.read<CommonTextFieldCubit>().state.text,
    );
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChanged);
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _controller.removeListener(_onTextChanged);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    context.read<CommonTextFieldCubit>().setFocused(_focusNode.hasFocus);
  }

  void _onTextChanged() {
    final cubit = context.read<CommonTextFieldCubit>();
    if (cubit.state.text != _controller.text) {
      cubit.setText(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommonTextFieldCubit, CommonTextFieldState>(
      listenWhen: (previous, current) {
        return previous.text != current.text;
      },
      listener: (context, state) {
        if (_controller.text != state.text) {
          _controller.text = state.text;
          _controller.selection = TextSelection.fromPosition(
            TextPosition(offset: _controller.text.length),
          );
        }
      },
      builder: (context, state) {
        final bool isError = state.error != null;
        final bool isEnabled = state.isEnabled;
        final bool isFocused = state.isFocused;

        Color borderColor;
        if (isError) {
          borderColor = AppColor.redColor;
        } else if (isFocused) {
          borderColor = AppColor.grayColor600;
        } else {
          borderColor = AppColor.grayColor300;
        }

        Color backgroundColor = isEnabled
            ? AppColor.whiteColor
            : AppColor.grayColor50;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      focusNode: _focusNode,
                      enabled: isEnabled,
                      keyboardType: widget.keyboardType,
                      obscureText: widget.obscureText,
                      maxLines: widget.maxLines,
                      textInputAction: widget.textInputAction,
                      style: AppTextStyle.body14R.copyWith(
                        color: isEnabled
                            ? AppColor.textPrimaryColor
                            : AppColor.textTertiaryColor,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: state.hintText,
                        hintStyle: AppTextStyle.body14R.copyWith(
                          color: AppColor.textTertiaryColor,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  if (state.text.isNotEmpty && isEnabled)
                    GestureDetector(
                      onTap: () =>
                          context.read<CommonTextFieldCubit>().clearText(),
                      child: SvgPicture.asset(
                        AssetPath.textDelete,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                ],
              ),
            ),
            if (isError || state.guideText != null) ...[
              Gap(4.h),
              if (isError)
                Text(
                  state.error!,
                  style: AppTextStyle.caption12R.copyWith(
                    color: AppColor.redColor,
                  ),
                )
              else if (state.guideText != null)
                Text(
                  state.guideText!,
                  style: AppTextStyle.caption12R.copyWith(
                    color: AppColor.textTertiaryColor,
                  ),
                ),
            ],
          ],
        );
      },
    );
  }
}
