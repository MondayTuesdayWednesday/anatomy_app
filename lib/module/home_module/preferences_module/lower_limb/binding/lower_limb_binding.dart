
import 'package:get/get.dart';

import '../controller/lower_limb_controller.dart';

class LowerLimbBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LowerLimbController>(() => LowerLimbController(),);
  }

}