import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HospitalizationController extends GetxController {
  var description = ''.obs;
  var name = ''.obs;
  var sexValue = ''.obs;

  void setupDescriptionValues(HospitalizationType type) async {
    name.value = type.text;
    final path = 'assets/texts/${type.name}_description.txt';
    description.value = await rootBundle.loadString(path);
  }

  void selectHospitalizationType(HospitalizationType type) {
    setupDescriptionValues(type);
    Get.toNamed(RoutesEnum.hospitalization_description.route);
  }

  void goToFormInput() {
    Get.toNamed(RoutesEnum.hospitalization_form.route);
  }

  void goToSuccessView(GlobalKey<FormState> key) {
    if ((key.currentState?.validate() ?? false) && sexValue.value != '') {
      Get.toNamed(RoutesEnum.hospitalization_success.route);
    }
  }
}
