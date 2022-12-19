import 'package:aicycle_collection_app/common/app_theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppStyles {
  static final TextStyle t14s = TextStyle(
    fontSize: 14.sp,
    height: 20 / 14,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle t14r = TextStyle(
    fontSize: 14.sp,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle w14r = TextStyle(
    fontSize: 14.sp,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle t16b = TextStyle(
    fontSize: 16.sp,
    height: 24 / 16,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle t12r = TextStyle(
    fontSize: 12.sp,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle w12r = TextStyle(
    fontSize: 12.sp,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle t17Dialog = TextStyle(
    fontSize: 17.sp,
    height: 22 / 17,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle t13 = TextStyle(
    fontSize: 13.sp,
    height: 18 / 13,
    fontWeight: FontWeight.w400,
  );
  // static final TextStyle t48m = TextStyle(
  //   fontSize: 48.sp,
  //   height: 56 / 48,
  //   fontWeight: FontWeight.w500,
  // );
  // static final TextStyle t48r = TextStyle(
  //   fontSize: 48.sp,
  //   height: 56 / 48,
  //   fontWeight: FontWeight.w400,
  // );
  // static final TextStyle t48l = TextStyle(
  //   fontSize: 48.sp,
  //   height: 56 / 48,
  //   fontWeight: FontWeight.w300,
  // );
  // static final TextStyle t30m = TextStyle(
  //   fontSize: 30.sp,
  //   height: 38 / 30,
  //   fontWeight: FontWeight.w500,
  // );
  // static final TextStyle t30r = TextStyle(
  //   fontSize: 30.sp,
  //   height: 38 / 30,
  //   fontWeight: FontWeight.w400,
  // );
  // static final TextStyle t30l = TextStyle(
  //   fontSize: 30.sp,
  //   height: 38 / 30,
  //   fontWeight: FontWeight.w300,
  // );
  // static final TextStyle t24b = TextStyle(
  //   fontSize: 24.sp,
  //   height: 32 / 24,
  //   fontWeight: FontWeight.w700,
  // );
  static final TextStyle t24m = TextStyle(
    fontSize: 24.sp,
    height: 32 / 24,
    fontWeight: FontWeight.w500,
  );
  // static final TextStyle t24r = TextStyle(
  //   fontSize: 24.sp,
  //   height: 32 / 24,
  //   fontWeight: FontWeight.w400,
  // );
  // static final TextStyle t24l = TextStyle(
  //   fontSize: 24.sp,
  //   height: 32 / 24,
  //   fontWeight: FontWeight.w300,
  // );
  // static final TextStyle t20b = TextStyle(
  //   fontSize: 20.sp,
  //   height: 28 / 20,
  //   fontWeight: FontWeight.w700,
  // );
  // static final TextStyle t20m = TextStyle(
  //   fontSize: 20.sp,
  //   height: 28 / 20,
  //   fontWeight: FontWeight.w500,
  // );
  // static final TextStyle t20r = TextStyle(
  //   fontSize: 20.sp,
  //   height: 28 / 20,
  //   fontWeight: FontWeight.w400,
  // );
  // static final TextStyle t20l = TextStyle(
  //   fontSize: 20.sp,
  //   height: 28 / 20,
  //   fontWeight: FontWeight.w300,
  // );
  // static final TextStyle t18b = TextStyle(
  //   fontSize: 18.sp,
  //   height: 28 / 18,
  //   fontWeight: FontWeight.w700,
  // );
  // static final TextStyle t18m = TextStyle(
  //   fontSize: 18.sp,
  //   height: 28 / 18,
  //   fontWeight: FontWeight.w500,
  // );
  // static final TextStyle t18r = TextStyle(
  //   fontSize: 18.sp,
  //   height: 28 / 18,
  //   fontWeight: FontWeight.w400,
  // );
  // static final TextStyle t18l = TextStyle(
  //   fontSize: 18.sp,
  //   height: 28 / 18,
  //   fontWeight: FontWeight.w300,
  // );
  // static final TextStyle t16b = TextStyle(
  //   fontSize: 16.sp,
  //   height: 24 / 16,
  //   fontWeight: FontWeight.w700,
  // );
  static final TextStyle t16m = TextStyle(
    fontSize: 16.sp,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
  );
  // static final TextStyle t16r = TextStyle(
  //   fontSize: 16.sp,
  //   height: 24 / 16,
  //   fontWeight: FontWeight.w400,
  // );
  static final TextStyle t16l = TextStyle(
    fontSize: 16.sp,
    height: 24 / 16,
    fontWeight: FontWeight.w300,
  );
  // static final TextStyle t14b = TextStyle(
  //   fontSize: 14.sp,
  //   height: 20 / 14,
  //   fontWeight: FontWeight.w700,
  // );
  // static final TextStyle t14m = TextStyle(
  //   fontSize: 14.sp,
  //   height: 20 / 14,
  //   fontWeight: FontWeight.w500,
  // );
  // static final TextStyle t14r = TextStyle(
  //   fontSize: 14.sp,
  //   height: 20 / 14,
  //   fontWeight: FontWeight.w400,
  // );
  static final TextStyle t14l = TextStyle(
    fontSize: 14.sp,
    height: 20 / 14,
    fontWeight: FontWeight.w300,
  );

  // static final TextStyle t12b = TextStyle(
  //   fontSize: 14.sp,
  //   height: 16 / 12,
  //   fontWeight: FontWeight.w700,
  // );
  // static final TextStyle t12m = TextStyle(
  //   fontSize: 14.sp,
  //   height: 16 / 12,
  //   fontWeight: FontWeight.w500,
  // );
  // static final TextStyle t12r = TextStyle(
  //   fontSize: 14.sp,
  //   height: 16 / 12,
  //   fontWeight: FontWeight.w400,
  // );
  // static final TextStyle t12l = TextStyle(
  //   fontSize: 14.sp,
  //   height: 16 / 12,
  //   fontWeight: FontWeight.w300,
  // );
}
