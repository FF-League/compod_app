import 'package:compod_app/components/widgets/compod_big_button.dart';
import 'package:compod_app/voluntary/controller/voluntary_controller.dart';
import 'package:compod_app/voluntary/models/voluntary_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoluntaryBigButton extends GetView {
  VoluntaryBigButton({Key? key, required this.type}) : super(key: key);

  final VoluntaryType type;

  @override
  final VoluntaryController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CompodBigButton(
      key: key,
      action: () => controller.selectVoluntaryType(type),
      text: type.text,
    );
  }
}