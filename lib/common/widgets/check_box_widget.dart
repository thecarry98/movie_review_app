// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movie_review_app/common/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    Key? key,
    required this.isChecked,
  }) : super(key: key);
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: 16.w,
      padding: isChecked ? EdgeInsets.all(2.w) : EdgeInsets.zero,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryA500),
        color: Colors.white,
      ),
      child: isChecked
          ? Container(
              height: 12.h,
              width: 12.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primaryA500),
            )
          : Container(
              height: 12.h,
              width: 12.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            ),
    );
  }
}
