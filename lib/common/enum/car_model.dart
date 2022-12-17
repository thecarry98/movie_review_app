// import 'package:easy_localization/easy_localization.dart';

// enum CarTypeEnum {
//   hatchBack("Hatchback"),
//   sedan("Sedan"),
//   suv("SUV/ CUV"),
//   mpv("MPV/ Minivan"),
//   truck("Pickup Truck");

//   final String type;
//   const CarTypeEnum(this.type);
//   factory CarTypeEnum.fromCarName(String carName) {
//     if (carName == "Toyota Vios") return CarTypeEnum.sedan;
//     if (carName == "KIA Morning") return CarTypeEnum.hatchBack;
//     if (carName == "Toyota Innova") return CarTypeEnum.mpv;
//     if (carName == "Toyota Cross") {
//       return CarTypeEnum.suv;
//     }
//     return CarTypeEnum.truck;
//   }
// }

// extension CarTypeExt on CarTypeEnum {
//   String get id {
//     switch (this) {
//       case CarTypeEnum.hatchBack:
//         return "1";
//       case CarTypeEnum.sedan:
//         return "5";
//       case CarTypeEnum.suv:
//         return "4";
//       case CarTypeEnum.mpv:
//         return "3";
//       case CarTypeEnum.truck:
//         const String flavor = String.fromEnvironment('flavor');
//         if (flavor == "dev") return "6";
//         return "7"; //todo
//     }
//   }

//   String get carName {
//     return type.tr();
//   }
// }

List<String> carModelName = [
  'KIA',
  'Mazda',
  'Toyota',
  'Suzuki',
  'Mercedes',
  'Rolls-Royce',
];
