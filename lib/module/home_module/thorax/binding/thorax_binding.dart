import 'package:anatomy/module/home_module/thorax/controller/thorax_controller.dart';
import 'package:get/get.dart';

class ThoraxBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ThoraxController(),);
  }

}