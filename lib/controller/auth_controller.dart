import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class AuthController extends GetxController {
  AuthController();
  navigateToLogin() {
    Get.toNamed(RouteName.login);
  }
}
