import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/forms/internation_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessView extends StatelessWidget {

  static const _imageSize = 130.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: FormsStringsEnum.hospitalization.name.tr,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AppImages.Check, height: _imageSize, width: _imageSize),
              Text(FormsStringsEnum.successFormsMessage.name.tr, textAlign: TextAlign.center, style: Get.textTheme.headline6?.copyWith(color: Colors.white)),
            ],
          ),
        ),
      )
    );
  }
}
