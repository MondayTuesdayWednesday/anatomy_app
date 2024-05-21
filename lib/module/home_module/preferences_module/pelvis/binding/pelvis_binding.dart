import 'package:get/get.dart';

import '../controller/pelvis_controller.dart';

class PelvisBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>PelvisController());
  }

}