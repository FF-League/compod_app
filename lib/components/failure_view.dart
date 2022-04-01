import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/components/widgets/compod_scaffold.dart';
import 'package:compod_app/home/view/home_view.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FailureView extends StatelessWidget {
  const FailureView({Key? key, required this.appBarText, required this.message}) : super(key: key);

  final String message;
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return CompodScaffold(
        appBarTitle: appBarText,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(CompodImages.fail, height: context.width * 0.2, width: context.width * 0.2),
                Text(message, textAlign: TextAlign.center, style: Get.textTheme.headline6?.copyWith(color: Colors.black, fontFamily: 'Nunito-SemiBold.ttf', fontWeight: FontWeight.w600 )),
                Padding(
                    padding: const EdgeInsets.only(left: 100,right: 100),
                    child: CompodRaisedButton(buttonText: CommonStrings.backButton.tr, action: () => Get.to(() => const HomeView()))
                )
              ],
            ),
          ),
        ));
  }
}
