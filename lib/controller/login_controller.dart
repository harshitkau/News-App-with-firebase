import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class LoginController extends GetxController {
  LoginController();

  navigateToSignUp() {
    Get.toNamed(RouteName.signup);
  }

  navigateAsGuest() {
    Get.offAllNamed(RouteName.home);
  }
}
