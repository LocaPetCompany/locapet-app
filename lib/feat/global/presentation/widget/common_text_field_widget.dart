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
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color borderColor;
    if (_isFocused) {
      borderColor = AppColor.grayColor600;
    } else {
      borderColor = AppColor.grayColor300;
    }

    Color backgroundColor = widget.isEnabled
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
              if (widget.controller.text.isNotEmpty && widget.isEnabled)
                GestureDetector(
                  onTap: () {
                    widget.controller.clear();
                    setState(() {}); // Update UI to hide delete button
                  },
                  child: SvgPicture.asset(
                    AssetPath.textDelete,
                    width: 20.w,
                    height: 20.h,
                  ),
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
