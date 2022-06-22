import 'package:flutter/material.dart';
import 'package:k_11_app/app/router/app_router.dart';
import 'package:k_11_app/app/ui/android/home/home_page.dart';
import 'package:k_11_app/app/ui/android/info_user/info_user_page.dart';
import 'package:k_11_app/app/ui/android/user/user_page.dart';
import 'package:k_11_app/app/ui/android/user/widget/detail_user.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return {
    Routes.INITIAL: (BuildContext context) => const HomePage(),
    Routes.INFO: (BuildContext context) => const InfoUserPage(),
    Routes.USER: (BuildContext context) => const UserPage(),
    Routes.DETAIL: (BuildContext context) => const DetailUser(),
  };
}
