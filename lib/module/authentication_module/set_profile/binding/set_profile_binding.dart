import 'package:get/get.dart';

import '../controller/set_profile_controller.dart';

class SetProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetProfileController());
  }
}
