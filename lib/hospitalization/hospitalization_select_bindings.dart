import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:get/get.dart';

class HospitalizationSelectBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HospitalizationController>(() => HospitalizationController());
  }
}
