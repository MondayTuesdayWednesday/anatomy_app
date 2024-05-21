
import 'package:get/get.dart';

import '../controller/thorax_controller.dart';

class ThoraxBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ThoraxController(),);
  }

}