import 'dart:io';

import 'package:compod_app/forms/views/components/internation_type.dart';
import 'package:get/get.dart';

class InternationController extends GetxController {

  Future<String> descriptionContinueAction(String string) async {
    final path = 'assets/texts/${string}_description';
    return await File(path).readAsString();
  }

  selectInternationType(InternationType type) {
    Get.toNamed('forms/description');
  }

}