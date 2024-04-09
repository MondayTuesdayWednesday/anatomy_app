import 'package:anatomy/module/Payment_module/card_detail/controller/card_detail_controller.dart';
import 'package:get/get.dart';

class CardDetailBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CardDetailController());
  }

}