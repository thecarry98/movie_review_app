import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../index.dart';

class CustomTextFieldSearch extends StatefulWidget {
  const CustomTextFieldSearch({
    Key? key,
    this.focusNode,
    this.searchTextController,
    this.onSearch,
    this.onChanged,
    this.fillColor,
    this.hintStyle,
    this.cusorColor,
  }) : super(key: key);

  final FocusNode? focusNode;
  final TextEditingController? searchTextController;
  final Function(String)? onSearch;
  final Function(String)? onChanged;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final Color? cusorColor;

  @override
  State<CustomTextFieldSearch> createState() => _CustomTextFieldSearchState();
}

class _CustomTextFieldSearchState extends State<CustomTextFieldSearch> {
  late TextEditingController _searchTextController;
  late FocusNode focusNode;
  @override
  void initState() {
    super.initState();
    focusNode = widget.focusNode ?? FocusNode();
    _searchTextController =
        widget.searchTextController ?? TextEditingController();
    _searchTextController.addListener(() {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: widget.cusorColor ?? AppColors.inkA400,
      focusNode: focusNode,
      controller: _searchTextController,
      style: AppStyles.t14s.copyWith(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        isDense: true,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.inkA200,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.inkA200,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
        ),
        filled: true,
        fillColor: widget.fillColor ?? Colors.white,
        // hintStyle: StyleUtils.textNormal14Style.copyWith(
        //   color: ColorUtils.typographySubtitle,
        // ),
        // prefixIconConstraints: BoxConstraints(
        //   minWidth: 26.w,
        //   maxWidth: 26.w,
        // ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Icon(
            Icons.search,
            size: 24.sp,
            color: AppColors.inkA400,
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          minWidth: 30.w,
          maxWidth: 30.w,
        ),
        suffixIcon: _searchTextController.text.isNotEmpty
            ? GestureDetector(
                onTap: () {
                  //clear text when tap icon cleara
                  _searchTextController.text = '';
                  widget.onSearch?.call(_searchTextController.text.trim());
                },
                child: const Icon(
                  Icons.close,
                  color: AppColors.inkA400,
                ),
              )
            : const SizedBox(),
        hintText: 'hint_input_search'.tr(),
        hintStyle: widget.hintStyle ??
            AppStyles.t14r.copyWith(color: AppColors.inkA300),
      ),
      onChanged: (value) {
        widget.onChanged?.call(value.trim());
      },
      onSubmitted: (value) {
        widget.onSearch?.call(value.trim());
        _searchTextController.text = value.trim();
      },
    );
  }
}
