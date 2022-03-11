import 'package:compod_app/commons/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodFormText extends StatelessWidget {
  const CompodFormText({required this.data, Key? key}) : super(key: key);

  final FormStrings data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: double.infinity,
      child: Text(data.tr, style: Get.textTheme.bodyText1),
    );
  }
}
