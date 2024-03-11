import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:news_app/controller/auth_controller.dart';
import 'package:news_app/controller/onboarding_controller.dart';
import 'package:news_app/controller/spalsh_controller.dart';
import 'package:news_app/res/routes/route_name.dart';
import 'package:news_app/view/login_page.dart';
import 'package:news_app/view/onboarding_page.dart';
import 'package:news_app/view/splash_page.dart';

class AppRoutes {
  static getRoutes() => [
        GetPage(
          name: RouteName.splash,
          page: () => SplashPage(),
          binding: BindingsBuilder.put(() => SpalshController()),
        ),
        GetPage(
          name: RouteName.onboarding,
          page: () => OnBoardingPage(),
          binding: BindingsBuilder.put(() => OnBoardingController()),
        ),
        GetPage(
          name: RouteName.login,
          page: () => LoginPage(),
          binding: BindingsBuilder.put(() => AuthController()),
        ),
      ];
}
