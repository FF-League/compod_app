import 'package:compod_app/forms/models/internation_type.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InternationController extends GetxController {
  var description = ''.obs;
  var name = ''.obs;
  var sexValue = ''.obs;

  void setupDescriptionValues(InternationType type) async {
    name.value = type.text;
    final path = 'assets/texts/${type.name}_description.txt';
    description.value = await rootBundle.loadString(path);
  }

  void selectInternationType(InternationType type) {
    setupDescriptionValues(type);
    Get.toNamed('/internation/description');
  }

  void goToFormInput() {
    Get.toNamed('/internation/form');
  }
}
