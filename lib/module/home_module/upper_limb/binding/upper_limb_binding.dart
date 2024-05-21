import 'package:anatomy/module/home_module/upper_limb/controller/upper_limb_controller.dart';
import 'package:get/get.dart';

class UpperLimbBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UpperLimbController(),);
  }

}