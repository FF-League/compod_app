import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/failure_view.dart';
import 'package:compod_app/components/success_view.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:compod_app/hospitalization/models/hospitalization_form.dart';
import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:compod_app/components/compod_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HospitalizationController extends GetxController {
  static const collectionId = 'forms';

  var description = ''.obs;
  var name = ''.obs;

  final form = HospitalizationForm().obs;

  String get sex => form.value.sex ?? '';
  set sex(v) => form.update((val) => val?.sex = v);

  void setupDescriptionValues(HospitalizationType type) async {
    name.value = type.text;
    final path = 'assets/texts/${type.name}_description.txt';
    description.value = await rootBundle.loadString(path);
  }

  void selectHospitalizationType(HospitalizationType type) {
    setupDescriptionValues(type);
    form.update((val) => val?.treatment = type);
    Get.toNamed(RoutesEnum.hospitalizationDescription.route);
  }

  void goToFormInput() {
    Get.toNamed(RoutesEnum.hospitalizationForm.route);
  }

  void sendForm(GlobalKey<FormState> key) async {
    if ((key.currentState?.validate() ?? false) && form.value.sex != '') {
      FirebaseFirestore.instance
          .collection(collectionId)
          .add(form.value.toJson)
          .then(
            (_) => goToSuccessView()
          )
          .catchError(
            (_, __) => goToFailureView(),
          );
    }
  }

  void goToSuccessView() {
    Get.to(SuccessView(
      appBarText: HospitalizationStringsEnum.hospitalization.tr,
      message: HospitalizationStringsEnum.successFormsMessage.tr,
    ));
  }

  void goToFailureView() {
    Get.to(FailureView(
      appBarText: HospitalizationStringsEnum.hospitalization.tr,
      message: CommonStrings.internalError.tr,
    ));
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
}
