
 import 'package:anatomy/module/profile_module/help_screen/controller/help_page_controller.dart';
import 'package:get/get.dart';

class HelppageBinding implements Bindings{
@override
void dependencies() {
  Get.lazyPut(() => HelpPageController());
}
}