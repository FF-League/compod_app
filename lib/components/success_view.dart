import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key, required this.appBarText, required this.message}) : super(key: key);

  final String message;
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CompodAppBar(text: appBarText),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(CompodImages.check, height: context.width * 0.6, width: context.width * 0.6),
                Text(message, textAlign: TextAlign.center, style: Get.textTheme.headline6?.copyWith(color: Colors.white)),
              ],
            ),
          ),
        ));
  }
}
