import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class HomeController extends GetxController {
  HomeController();

  final _currentSelectedCategoryIndex = 0.obs;
  get currentSelectedCategoryIndex => this._currentSelectedCategoryIndex.value;
  set currentSelectedCategoryIndex(value) =>
      this._currentSelectedCategoryIndex.value = value;

  final _currentSwiperIndex = 0.obs;
  get currentSwiperIndex => this._currentSwiperIndex.value;
  set currentSwiperIndex(value) => this._currentSwiperIndex.value = value;

  changeSwiperIndex(int value) {
    currentSwiperIndex = value;
  }

  onNewsTapped() {
    Get.toNamed(RouteName.newsDetails);
  }
}
