import 'package:get/get.dart';

import '../controller/female_controller.dart';

class FemaleBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FemaleController());
  }

}