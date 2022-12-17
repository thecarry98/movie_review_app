import 'package:easy_localization/easy_localization.dart';

enum ShotEnum { longShot, middleShot, closeUpShot, other }

extension ShotEnumExt on ShotEnum {
  String get title {
    switch (this) {
      case ShotEnum.longShot:
        return "longShot".tr();
      case ShotEnum.middleShot:
        return 'middleShot'.tr();
      case ShotEnum.closeUpShot:
        return 'closeUpShot'.tr();
      case ShotEnum.other:
        return 'other'.tr();
    }
  }
}
