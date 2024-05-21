import 'package:anatomy/module/home_module/lower_limb/controller/lower_limb_controller.dart';
import 'package:get/get.dart';

class LowerLimbBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LowerLimbController>(() => LowerLimbController(),);
  }

}