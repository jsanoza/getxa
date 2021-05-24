import 'package:get/get.dart';

class Increment extends GetxController {
  var count = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    count.value = 25;
    super.onInit();
  }

  void addCount() {
    count = count++;
  }

  void minusCount() {
    count = count--;
  }
}
