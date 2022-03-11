import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/home/view/components/home_tile.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void tileAction(HomeTileType type) {
    switch (type) {
      case HomeTileType.doctor: Get.toNamed(RoutesEnum.hospitalization.route);
        return;
      case HomeTileType.anjinho: Get.toNamed(RoutesEnum.miniBook.route);
        return;
      default: return;
    }
  }
}
