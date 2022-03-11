import 'package:compod_app/voluntary/controller/voluntary_controller.dart';
import 'package:get/get.dart';

class VoluntaryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VoluntaryController>(() => VoluntaryController());
  }
}