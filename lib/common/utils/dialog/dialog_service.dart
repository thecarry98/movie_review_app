import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../index.dart';
import '../../widgets/buttons/app_button.dart';
import '../../widgets/textfields/textfields/index.dart';

class DialogService {
  static Future<dynamic> showActionDialog(
    BuildContext context, {
    String? leftButtonText,
    String? rightButtonText,
    VoidCallback? onPressedLeftButton,
    VoidCallback? onPressedRightButton,
    String? description,
    TextStyle? descriptionTextStyle,
    TextStyle? leftButtonTextStyle,
    TextStyle? rightButtonTextStyle,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          child: _DialogWidget(
            leftButtonTextStyle: leftButtonTextStyle,
            leftButtonText: leftButtonText,
            onPressedLeftButton: onPressedLeftButton,
            description: description,
            descriptionTextStyle: descriptionTextStyle,
            rightButtonText: rightButtonText,
            onPressedRightButton: onPressedRightButton,
            rightButtonTextStyle: rightButtonTextStyle,
          ),
        );
      },
    );
  }

  static Future<dynamic> showCreateFolderDialog(
    BuildContext context, {
    Widget? title,
    TextStyle? titleStyle,
    required List<String> carModel,
  }) {
    return showDialog(
      context: context,
      builder: (c) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: CreateFolderDialog(
          carBrands: carModel,
        ),
      ),
    );
  }

  // static Future<dynamic> showAcceptDialog(BuildContext context) {
  //   return showDialog(context: context, builder: (c) => Dialog());
  // }
}

class CreateFolderDialog extends StatefulWidget {
  const CreateFolderDialog({super.key, required this.carBrands});
  final List<String> carBrands;

  @override
  State<CreateFolderDialog> createState() => _CreateFolderDialogState();
}

class _CreateFolderDialogState extends State<CreateFolderDialog> {
  final TextEditingController _controller = TextEditingController();
  List<int> _currentIndex = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColors.backgroundDialog,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.h,
          ),
          Text(
            'create_new_folder'.tr(),
            style: AppStyles.t17Dialog.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: NoBorderTextField(
                    controller: _controller,
                    hasClearButton: false,
                    hintText: 'license_plates'.tr(),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: () async {
                    final res = await showSelectionBottomSheet(
                      context,
                      data: widget.carBrands,
                      selectedIndexes: _currentIndex,
                    );
                    if (res.isNotEmpty) {
                      setState(() {
                        _currentIndex = res;
                      });
                    }
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.inkA200,
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _currentIndex.isEmpty
                                ? "car_model".tr()
                                : widget.carBrands
                                    .elementAt(_currentIndex.first),
                            style: AppStyles.t14l.copyWith(
                              color: _currentIndex.isEmpty
                                  ? AppColors.inkA300
                                  : AppColors.inkA500,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.iconColor,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Divider(
            color: AppColors.dialogDivider,
            height: 1.h,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: AppButton(
                    onPressed: () {
                      _controller.text = '';
                      context.router.pop();
                    },
                    title: 'cancel'.tr(),
                    backgroundColor: AppColors.backgroundDialog,
                    textColor: const Color(0xff007aff),
                    textStyle: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: AppColors.dialogDivider,
                  width: 1.w,
                ),
                Expanded(
                  child: AppButton(
                    onPressed: () async {
                      if (_currentIndex.isNotEmpty) {
                        await context.router.pop();
                      }
                    },
                    title: 'create'.tr(),
                    backgroundColor: AppColors.backgroundDialog,
                    textColor: const Color(0xff007aff),
                    textStyle: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DialogWidget extends StatefulWidget {
  final String? leftButtonText;
  final String? rightButtonText;
  final VoidCallback? onPressedLeftButton;
  final VoidCallback? onPressedRightButton;
  final String? description;
  final TextStyle? descriptionTextStyle;
  final TextStyle? leftButtonTextStyle;
  final TextStyle? rightButtonTextStyle;

  const _DialogWidget({
    Key? key,
    this.leftButtonText,
    this.rightButtonText,
    this.onPressedLeftButton,
    this.onPressedRightButton,
    this.description,
    this.descriptionTextStyle,
    this.leftButtonTextStyle,
    this.rightButtonTextStyle,
  }) : super(key: key);

  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<_DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.description != null
              ? Text(widget.description ?? "",
                  textAlign: TextAlign.center,
                  style: widget.descriptionTextStyle ?? AppStyles.t14r)
              : const SizedBox.shrink(),
          const SizedBox(
            height: 20,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    isOutlined: true,
                    verticalPadding: 0,
                    title: widget.leftButtonText ?? "OK",
                    onPressed: () {
                      widget.onPressedLeftButton?.call();
                      Navigator.pop(context);
                    },
                    borderRadius: 2,
                    textColor: Colors.black,
                    textStyle: widget.leftButtonTextStyle ?? AppStyles.t14r,
                  ),
                ),
                widget.rightButtonText != null
                    ? const SizedBox(
                        width: 16,
                      )
                    : const SizedBox.shrink(),
                widget.rightButtonText != null
                    ? Expanded(
                        child: AppButton(
                          verticalPadding: 0,
                          title: widget.rightButtonText ?? "",
                          onPressed: () {
                            widget.onPressedRightButton?.call();
                            Navigator.pop(context);
                          },
                          borderRadius: 2,
                          textStyle:
                              widget.leftButtonTextStyle ?? AppStyles.t14r,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
