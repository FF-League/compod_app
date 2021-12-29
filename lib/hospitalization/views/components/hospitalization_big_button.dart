import 'package:compod_app/components/widgets/compod_big_button.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationBigButton extends GetView {
  HospitalizationBigButton({Key? key, required this.type}) : super(key: key);

  final HospitalizationType type;

  @override
  final HospitalizationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CompodBigButton(
      key: key,
      action: () => controller.selectHospitalizationType(type),
      text: type.text,
      image: type.image,
    );
  }
}
