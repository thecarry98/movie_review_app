import 'package:movie_review_app/routes/app_routes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../features/core/presentation/core_page.dart';

part 'app_pages.gr.dart';

@singleton
@MaterialAutoRouter(routes: [
  AutoRoute(path: AppRoutes.core, page: CorePage, initial: true),
  // AutoRoute(path: AppRoutes.camera, page: CameraPage),
  // AutoRoute(path: AppRoutes.login, page: LoginPage),
  // AutoRoute(path: AppRoutes.home, page: HomePage),
  // AutoRoute(path: AppRoutes.changedLanguage, page: ChangedLanguagePage),
])
class AppPages extends _$AppPages {}
