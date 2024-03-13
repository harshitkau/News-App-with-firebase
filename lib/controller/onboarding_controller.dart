import 'package:get/get.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:news_app/res/routes/route_name.dart';

class OnBoardingController extends GetxController {
  OnBoardingController();

  final _currentIndex = 0.obs;
  get currentIndex => this._currentIndex.value;
  set currentIndex(value) => this._currentIndex.value = value;

  PageController? pageController;

  changeIndex(int value) {
    currentIndex = value;
  }

  changePage(int value) {
    pageController?.animateToPage(value,
        duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
  }

  orContinueOrSkippedPressed() {
    Get.offNamed(RouteName.authentication);
  }
}
