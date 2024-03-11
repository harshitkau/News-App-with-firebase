import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class SpalshController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateScreen();
  }

  navigateScreen() {
    Future.delayed(
        Duration(seconds: 3), () => Get.offNamed(RouteName.onboarding));
  }
}
