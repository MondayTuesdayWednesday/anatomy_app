// PaymentController
import 'package:anatomy/common/app_assets.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxInt selectedContainerIndex = (-1).obs;
  RxInt selectedRadioIndex = (-1).obs;

  // Lists for icons and text
  List<String> iconList = [
  AppAssets.solarChartPaymentIcon,
    AppAssets.videoPlayPaymentICon,
    AppAssets.bookPaymentICon

    ];
  List<String> textList = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing  dolor sit amet elit, sed do eiusmod ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
  ];

  void changeColor(int index) {
    selectedContainerIndex.value = index;
    selectedRadioIndex.value = index;
  }

  void changeRadio(int index) {
    selectedContainerIndex.value = index;
    selectedRadioIndex.value = index;
  }
}
