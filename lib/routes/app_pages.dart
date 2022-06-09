import 'package:get/get.dart';
import 'package:google_sign_in_getx/bindings/home_binding.dart';
import 'package:google_sign_in_getx/bindings/login_binding.dart';
import 'package:google_sign_in_getx/bindings/welcome_binding.dart';
import 'package:google_sign_in_getx/routes/app_routes.dart';
import 'package:google_sign_in_getx/views/home_page.dart';
import 'package:google_sign_in_getx/views/login_page.dart';
import 'package:google_sign_in_getx/views/welcome_page.dart';

class AppPages {
  static const initial = Routes.home;
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.welcome,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
