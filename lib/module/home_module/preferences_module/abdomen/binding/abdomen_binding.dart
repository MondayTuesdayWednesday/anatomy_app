
import 'package:get/get.dart';

import '../controller/abdomen_controller.dart';

class AbdomenBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AbdomenController>(() => AbdomenController(),);
  }

}