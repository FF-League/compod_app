import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationFormText extends Container {
  HospitalizationFormText({Key? key, required String data}) : super(key: key, width: double.infinity, child: Text(data, style: Get.textTheme.bodyText1));
}