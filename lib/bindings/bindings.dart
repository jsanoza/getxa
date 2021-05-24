import 'package:fullgetxlifecycle/controller/controller.dart';
import 'package:get/get.dart';

class BindMe extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Increment>(() => Increment(), fenix: true);
  }
}
