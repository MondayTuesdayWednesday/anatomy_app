
import 'package:get/get.dart';

import '../controller/upper_limb_controller.dart';

class UpperLimbBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UpperLimbController(),);
  }

}