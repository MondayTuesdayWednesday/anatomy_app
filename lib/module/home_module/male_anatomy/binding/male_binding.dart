import 'package:get/get.dart';

import '../controller/male_controller.dart';

class MaleBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MaleController());
  }

}