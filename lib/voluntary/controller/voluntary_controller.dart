import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/compod_form_field.dart';
import 'package:compod_app/components/failure_view.dart';
import 'package:compod_app/components/success_view.dart';
import 'package:compod_app/voluntary/models/voluntary_form.dart';
import 'package:compod_app/voluntary/models/voluntary_type.dart';
import 'package:compod_app/voluntary/voluntary_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VoluntaryController extends GetxController {
  static const collectionId = 'voluntary';

  final form = Rx<VoluntaryForm>(VoluntaryForm());

  final description = RxString('');
  final name = RxString('');

  Future<void> setupDescriptionValues(VoluntaryType type) async {
    name.value = type.text;
    final path = 'assets/texts/${type.name}_description.txt';
    description.value = await rootBundle.loadString(path);
  }

  void selectVoluntaryType(VoluntaryType type) {
    setupDescriptionValues(type);
    form.update((val) => val?.type = type);
    Get.toNamed(RoutesEnum.voluntaryForm.route);
  }

  void updateFormContent(CompodFormType type, String value) {
    switch (type) {
      case CompodFormType.age:
        return form.update((val) => val?.age = int.tryParse(value) ?? 0);
      case CompodFormType.text:
        return form.update((val) => val?.text = value);
      case CompodFormType.name:
        return form.update((val) => val?.name = value);
      case CompodFormType.email:
        return form.update((val) => val?.email = value);
      case CompodFormType.phone:
        return form.update((val) => val?.phone = value);
      case CompodFormType.job:
        return form.update((val) => val?.job = value);
      case CompodFormType.address:
        return form.update((val) => val?.address = value);
    }
  }

  void sendForm(GlobalKey<FormState> formKey) {
    final currentState = formKey.currentState;
    if (currentState == null) return;

    if (currentState.validate()) {
      currentState.save();
      FirebaseFirestore.instance.collection(collectionId).add(form.value.toJson).then((_) => goToSuccessView()).catchError((_, __) => goToFailureView());
    }
  }

  void goToSuccessView() {
    Get.to(SuccessView(
      appBarText: VoluntaryStrings.title.tr,
      message: VoluntaryStrings.successMessage.tr,
    ));
  }

  void goToFailureView() {
    Get.to(FailureView(
      appBarText: VoluntaryStrings.title.tr,
      message: CommonStrings.internalError.tr,
    ));
  }
}
