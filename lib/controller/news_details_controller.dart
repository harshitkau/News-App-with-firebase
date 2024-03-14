import 'package:get/get.dart';

class NewsDetailsController extends GetxController {
  NewsDetailsController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  void navigateBack() {
    Get.back();
  }
}
