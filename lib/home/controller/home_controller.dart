import 'package:compod_app/home/view/components/home_tile.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void tileAction(HomeTileType type) {
    switch (type) {
      case HomeTileType.Doctor: Get.toNamed('internation');
        return;
      case HomeTileType.Anjinho: Get.toNamed('mini-book');
        return;
      default: return;
    }
  }
}
