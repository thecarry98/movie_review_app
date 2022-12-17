import 'package:easy_localization/easy_localization.dart';

enum CarPartDirectionEnum {
  // up(1),
  front(2),
  d45RightFront(3),
  d45LeftFront(4),
  back(5),
  d45RightBack(6),
  d45LeftBack(7),
  rightFront(8),
  leftFront(9),
  rightBack(10),
  leftBack(11);

  /// Góc trái trên môi trường dev có id là 31
  // leftDev(31),

  /// Góc trái trên môi trường production có id là 22
  // leftProd(22);

  final int id;
  const CarPartDirectionEnum(this.id);

  factory CarPartDirectionEnum.fromId(int id) {
    switch (id) {
      // case 1:
      //   return CarPartDirectionEnum.up;
      case 2:
        return CarPartDirectionEnum.front;
      case 3:
        return CarPartDirectionEnum.d45RightFront;
      case 4:
        return CarPartDirectionEnum.d45LeftFront;
      case 5:
        return CarPartDirectionEnum.back;
      case 6:
        return CarPartDirectionEnum.d45RightBack;
      case 7:
        return CarPartDirectionEnum.d45LeftBack;
      case 8:
        return CarPartDirectionEnum.rightFront;
      case 9:
        return CarPartDirectionEnum.leftFront;
      case 10:
        return CarPartDirectionEnum.rightBack;
      case 11:
        return CarPartDirectionEnum.leftBack;
      // case 22:
      //   return CarPartDirectionEnum.leftProd;
      // case 31:
      //   return CarPartDirectionEnum.leftDev;
      default:
        return CarPartDirectionEnum.leftFront;
    }
  }
}

extension CarPartDirectionEnumExt on CarPartDirectionEnum {
  int get id => index + 1;

  String get title {
    switch (this) {
      // case CarPartDirectionEnum.up:
      //   return "up".tr();
      case CarPartDirectionEnum.front:
        return "front".tr();
      case CarPartDirectionEnum.d45RightFront:
        return "rightFront45".tr();
      case CarPartDirectionEnum.d45LeftFront:
        return "leftFront45".tr();
      case CarPartDirectionEnum.back:
        return "back".tr();
      case CarPartDirectionEnum.d45RightBack:
        return "rightBack45".tr();
      case CarPartDirectionEnum.d45LeftBack:
        return "leftBack45".tr();
      case CarPartDirectionEnum.rightFront:
        return "rightFront".tr();
      case CarPartDirectionEnum.leftFront:
        return "leftFront".tr();
      case CarPartDirectionEnum.rightBack:
        return "rightBack".tr();
      case CarPartDirectionEnum.leftBack:
        return "leftBack".tr();
      // case CarPartDirectionEnum.left:
      //   return "left".tr();
      // case CarPartDirectionEnum.leftDev:
      //   return "left".tr();
      // case CarPartDirectionEnum.leftProd:
      //   return "left".tr();
    }
  }

  // String get buyMeTitle {
  //   if (this == CarPartDirectionEnum.d45RightFront) {
  //     return "rightFront45_buyme".tr();
  //   }
  //   if (this == CarPartDirectionEnum.d45LeftFront) {
  //     return "leftFront45_buyme".tr();
  //   }
  //   if (this == CarPartDirectionEnum.d45RightBack) {
  //     return "rightBack45_buyme".tr();
  //   }
  //   if (this == CarPartDirectionEnum.leftDev ||
  //       this == CarPartDirectionEnum.leftProd) {
  //     return "guideLeft".tr();
  //   }
  //   return "leftBack45_buyme".tr();
  // }

  String get imageContent {
    switch (this) {
      // case CarPartDirectionEnum.up:
      //   return 'up';
      case CarPartDirectionEnum.front:
        return 'front';
      case CarPartDirectionEnum.d45RightFront:
        return 'd45RightFront';
      case CarPartDirectionEnum.d45LeftFront:
        return 'd45LeftFront';
      case CarPartDirectionEnum.back:
        return 'back';
      case CarPartDirectionEnum.d45RightBack:
        return 'd45RightBack';
      case CarPartDirectionEnum.d45LeftBack:
        return 'd45LeftBack';
      case CarPartDirectionEnum.rightFront:
        return 'rightFront';
      case CarPartDirectionEnum.leftFront:
        return 'leftFront';
      case CarPartDirectionEnum.rightBack:
        return 'rightBack';
      case CarPartDirectionEnum.leftBack:
        return 'leftBack';
      // case CarPartDirectionEnum.leftDev:
      //   return '';
      // case CarPartDirectionEnum.leftProd:
      //   return '';
    }
  }

  String get intoContent {
    switch (this) {
      // case CarPartDirectionEnum.up:
      case CarPartDirectionEnum.front:
      case CarPartDirectionEnum.rightFront:
      case CarPartDirectionEnum.leftFront:
      case CarPartDirectionEnum.rightBack:
      case CarPartDirectionEnum.leftBack:
        // case CarPartDirectionEnum.leftDev:
        // case CarPartDirectionEnum.leftProd:
        return "introLeft".tr();
      case CarPartDirectionEnum.d45RightFront:
        return "introRightFront".tr();
      case CarPartDirectionEnum.d45LeftFront:
        return "introLeftFront".tr();
      case CarPartDirectionEnum.back:
      case CarPartDirectionEnum.d45RightBack:
        return "introRightBack".tr();
      case CarPartDirectionEnum.d45LeftBack:
        return "introLeftBack".tr();
    }
  }

  String chassisPath(String carName) {
    return 'assets/images/${carName}_chassis_$imageContent.png';
  }

  String get visionPath {
    return 'assets/images/vision_$imageContent.png';
  }

  String guideImagePath(String langCode) {
    switch (this) {
      // case CarPartDirectionEnum.up:
      case CarPartDirectionEnum.front:
      case CarPartDirectionEnum.rightFront:
      case CarPartDirectionEnum.leftFront:
      case CarPartDirectionEnum.rightBack:
      case CarPartDirectionEnum.leftBack:
        // case CarPartDirectionEnum.leftDev:
        // case CarPartDirectionEnum.leftProd:
        return "assets/images/vi_left_guide.png";
      case CarPartDirectionEnum.d45RightFront:
        return "assets/images/${langCode}_rightFront_guide.png";
      case CarPartDirectionEnum.d45LeftFront:
        return "assets/images/${langCode}_leftFront_guide.png";
      case CarPartDirectionEnum.back:
      case CarPartDirectionEnum.d45RightBack:
        return "assets/images/${langCode}_rightBack_guide.png";
      case CarPartDirectionEnum.d45LeftBack:
        return "assets/images/${langCode}_leftBack_guide.png";
    }
  }

  String get intoTitle {
    switch (this) {
      // case CarPartDirectionEnum.up:
      case CarPartDirectionEnum.front:
      case CarPartDirectionEnum.rightFront:
      case CarPartDirectionEnum.leftFront:
      case CarPartDirectionEnum.rightBack:
      case CarPartDirectionEnum.leftBack:
        // case CarPartDirectionEnum.leftDev:
        // case CarPartDirectionEnum.leftProd:
        return "guideLeft".tr();
      case CarPartDirectionEnum.d45RightFront:
        return "guideRightFront".tr();
      case CarPartDirectionEnum.d45LeftFront:
        return "guideLeftFront".tr();
      case CarPartDirectionEnum.back:
      case CarPartDirectionEnum.d45RightBack:
        return "guideRightBack".tr();
      case CarPartDirectionEnum.d45LeftBack:
        return "guideLeftBack".tr();
    }
  }
}
