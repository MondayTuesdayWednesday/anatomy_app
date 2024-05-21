
import 'package:get/get.dart';

import '../controller/organs_controller.dart';

class OrgansBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => OrgansController(),);
  }

}