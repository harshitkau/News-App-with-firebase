import 'package:get/get.dart';

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
}
