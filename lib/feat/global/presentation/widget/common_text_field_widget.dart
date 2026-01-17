import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? guideText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final bool isEnabled;

  const CommonTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.guideText,
    this.keyboardType,
    this.obscureText = false,
    this.maxLines = 1,
    this.textInputAction,
    this.isEnabled = true,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldWidgetState();
}

class _CommonTextFieldWidgetState extends State<CommonTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = widget.isEnabled
        ? AppColor.whiteColor
        : AppColor.grayColor50;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedBuilder(
          animation: _focusNode,
          builder: (context, child) {
            Color borderColor = _focusNode.hasFocus
                ? AppColor.grayColor600
                : AppColor.grayColor300;
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: borderColor, width: 1.w),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: child,
            );
          },
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  focusNode: _focusNode,
                  enabled: widget.isEnabled,
                  keyboardType: widget.keyboardType,
                  obscureText: widget.obscureText,
                  maxLines: widget.maxLines,
                  textInputAction: widget.textInputAction,
                  style: AppTextStyle.body14R.copyWith(
                    color: widget.isEnabled
                        ? AppColor.textPrimaryColor
                        : AppColor.textTertiaryColor,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: AppTextStyle.body14R.copyWith(
                      color: AppColor.textTertiaryColor,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              if (widget.isEnabled)
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: widget.controller,
                  builder: (context, value, child) {
                    if (value.text.isEmpty) return const SizedBox.shrink();
                    return GestureDetector(
                      onTap: () {
                        widget.controller.clear();
                      },
                      child: SvgPicture.asset(
                        AssetPath.textDelete,
                        width: 20.w,
                        height: 20.h,
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
        if (widget.guideText != null) ...[
          Gap(4.h),
          Text(
            widget.guideText!,
            style: AppTextStyle.caption12R.copyWith(
              color: AppColor.textTertiaryColor,
            ),
          ),
        ],
      ],
    );
  }
}
