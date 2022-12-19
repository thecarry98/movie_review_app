import 'dart:developer';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common/index.dart';
import 'di/di_setup.dart';
import 'gen/fonts.gen.dart';
import 'routes/app_pages.dart';

String envConfig(String flavor) {
  switch (flavor) {
    case 'dev':
      return 'assets/env/.env_dev';
    case 'staging':
      return 'assets/env/.env_staging';
    case 'production':
      return 'assets/env/.env_production';
    default:
      return 'assets/env/.env_dev';
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
  log("flavor: $flavor");
  await dotenv.load(
    fileName: envConfig(flavor),
  );
  await EasyLocalization.ensureInitialized();
  // configureDependencies();
  // await Firebase.initializeApp();
  // await getIt<PushNotificationHelper>().initialize();
  // await getIt<LocalNotificationHelper>().init();

  runApp(
    DevicePreview(
      enabled: false, // !kReleaseMode,
      builder: (context) {
        return EasyLocalization(
          // supportedLocales: const [
          //   LocalizationConstants.enUSLocale,
          //   LocalizationConstants.viLocale
          // ],
          supportedLocales: LocalizationConstants.availableLocales,
          startLocale: LocalizationConstants.viLocale,
          path: LocalizationConstants.path,
          fallbackLocale: LocalizationConstants.viLocale,
          child: MyApp(),
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRoute = getIt<AppPages>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ScreenUtilsConfig.designWidth,
        ScreenUtilsConfig.designHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColors.primaryA500,
            fontFamily: FontFamily.lexend,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: AppColors.inkA500,
                  displayColor: AppColors.inkA500,
                  fontFamily: FontFamily.lexend,
                ),
            tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
                  labelStyle:
                      Theme.of(context).tabBarTheme.labelStyle?.copyWith(
                            fontFamily: FontFamily.lexend,
                          ),
                ),
          ),
          routerDelegate: _appRoute.delegate(),
          routeInformationParser: _appRoute.defaultRouteParser(),
        );
      },
    );
  }
}
