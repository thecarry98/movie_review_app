import 'package:movie_review_app/common/app_theme/app_colors.dart';
import 'package:movie_review_app/common/app_theme/app_styles.dart';
import 'package:movie_review_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../index.dart';

enum TextFieldState {
  none,
  validateSucceeded,
  validateFailed,
}

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final double radius;
  final Color borderColor;
  final Color focusBorderColor;
  final Color? cursorColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final String? hintText;
  final String? initText;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final bool readOnly;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  final Function(String)? onChanged;

  ///flag to show/ hide content in text field
  final bool isPassword;

  ///flag to determine state of text field
  final TextFieldState state;

  ///Error text below the text field
  final String? errorText;

  const AppTextField({
    Key? key,
    this.controller,
    this.readOnly = false,
    this.radius = 8,
    this.borderColor = AppColors.inkA200,
    this.focusBorderColor = AppColors.primaryA500,
    this.textStyle,
    this.cursorColor,
    this.backgroundColor,
    this.maxLength,
    this.hintText,
    this.hintStyle,
    this.isPassword = false,
    this.state = TextFieldState.none,
    this.errorText,
    this.inputFormatters,
    this.keyboardType,
    this.initText,
    this.onChanged,
    this.focusNode,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _controller;
  bool isObscure = false;
  bool isFocus = false;
  String _text = "";
  late TextStyle _textStyle;
  late TextFieldState _state;

  @override
  void initState() {
    isObscure = widget.isPassword;
    _textStyle =
        widget.textStyle ?? AppStyles.t16l.copyWith(color: AppColors.inkA500);
    _state = widget.state;
    _controller =
        widget.controller ?? TextEditingController(text: widget.initText);
    super.initState();
  }

  void _toggleObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  void _onFocusChange(bool val) {
    setState(() {
      isFocus = val;
    });
  }

  @override
  void didUpdateWidget(AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state != widget.state) {
      setState(() {
        _state = widget.state;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.radius),
            border: Border.all(
              color: _borderColor,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          child: Row(
            children: [
              Expanded(
                child: Focus(
                  onFocusChange: _onFocusChange,
                  child: TextField(
                    onChanged: (text) {
                      widget.onChanged?.call(text);
                      setState(() {
                        _text = text;
                      });
                    },
                    readOnly: widget.readOnly,
                    cursorColor: widget.cursorColor ?? Colors.black,
                    obscureText: isObscure,
                    obscuringCharacter: '●',
                    keyboardType: widget.keyboardType,
                    scrollPadding: EdgeInsets.zero,
                    inputFormatters: [
                      ...?widget.inputFormatters,
                      LengthLimitingTextInputFormatter(widget.maxLength),
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      // isCollapsed: true,
                      labelText: widget.hintText ?? "",
                      labelStyle:
                          AppStyles.t16l.copyWith(color: AppColors.inkA400),
                      // hintText: widget.hintText ?? "",
                      // hintStyle: widget.hintStyle ??
                      //     AppStyles.t16l.copyWith(color: AppColors.inkA400),
                    ),
                    style: _textStyle.copyWith(color: _textColor),
                    controller: _controller,
                  ),
                ),
              ),
              if (_text.isNotEmpty)
                InkWell(
                  onTap: () {
                    setState(() {
                      _controller.clear();
                      _text = "";
                    });
                    widget.onChanged?.call('');
                  },
                  child: Padding(
                    padding: EdgeInsets.all(4.0.w),
                    // child:
                    // Assets.svg.icCloseCircle.svg(height: 16.w, width: 16.w),
                  ),
                ),
              if (widget.isPassword)
                InkWell(
                  onTap: _toggleObscure,
                  child: Padding(
                    padding: EdgeInsets.all(4.0.w),
                    // child: isObscure
                    // ? Assets.svg.icHide.svg(height: 16.w, width: 16.w)
                    // : Assets.svg.icShow.svg(height: 16.w, width: 16.w),
                  ),
                ),
            ],
          ),
        ),
        if ((widget.errorText ?? "").isNotEmpty &&
            _state == TextFieldState.validateFailed)
          Padding(
            padding: EdgeInsets.only(top: 8.0.h),
            child: Text(
              widget.errorText!,
              style: AppStyles.t14l.copyWith(color: AppColors.redA500),
            ),
          ),
      ],
    );
  }

  Color get _borderColor {
    if (_state == TextFieldState.validateFailed) {
      return AppColors.redA500;
    }
    if (isFocus) {
      return widget.focusBorderColor;
    } else {
      return widget.borderColor;
    }
  }

  Color get _textColor {
    if (_state == TextFieldState.validateFailed) {
      return AppColors.redA500;
    }
    return _textStyle.color ?? AppColors.inkA500;
  }
}
