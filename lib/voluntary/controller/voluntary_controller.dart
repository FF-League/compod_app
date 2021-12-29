import 'package:compod_app/voluntary/models/voluntary_type.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VoluntaryController extends GetxController {
  var description = ''.obs;
  var name = ''.obs;

  void setupDescriptionValues(VoluntaryType type) async {
    name.value = type.text;
    final path = 'assets/texts/${type.name}_description.txt';
    description.value = await rootBundle.loadString(path);
  }

  void selectVoluntaryType(VoluntaryType type) {
    setupDescriptionValues(type);
    // form.update((val) => val?.treatment = type);
    // Get.toNamed(RoutesEnum.VoluntaryDescription.route);
  }
}