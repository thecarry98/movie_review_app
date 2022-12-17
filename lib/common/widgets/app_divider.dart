import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../index.dart';

class AppDivider extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? thickness;
  const AppDivider({Key? key, this.color, this.height, this.thickness})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.inkA100,
      height: height ?? 1.h,
      thickness: thickness ?? 1.h,
    );
  }
}

class AppDividerVertical extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? thickness;
  const AppDividerVertical({Key? key, this.color, this.width, this.thickness})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: color ?? AppColors.inkA100,
      width: width ?? 1.w,
      thickness: thickness ?? 1.h,
    );
  }
}
