import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/home/controller/home_controller.dart';
import 'package:compod_app/home/home_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  get controller => Get.put(HomeController());

  static const buttonPadding = 6.0;
  static const padding = 16.0;

  static final _buttonList = [
    CompodRaisedButton(
      buttonText: HomeStringsEnum.hospitalization.tr,
      action: () => Get.toNamed(RoutesEnum.hospitalization.route),
      white: true,
      padding: buttonPadding,
    ),
    CompodRaisedButton(
      buttonText: HomeStringsEnum.volunteer.tr,
      action: () => Get.toNamed(RoutesEnum.voluntary.route),
      white: true,
      padding: buttonPadding,
    ),
    CompodRaisedButton(
      buttonText: HomeStringsEnum.miniBook.tr,
      action: () => Get.toNamed(RoutesEnum.minibook.route),
      white: true,
      padding: buttonPadding,
    ),
    CompodRaisedButton(
      buttonText: HomeStringsEnum.about.tr,
      action: () {},
      white: true,
      padding: buttonPadding,
    ),
    CompodRaisedButton(
      buttonText: HomeStringsEnum.contact.tr,
      action: () {},
      white: true,
      padding: buttonPadding,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.colorScheme.primary,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(padding),
              child: Image.asset(CompodImages.whiteLogo, height: 80),
            ),
            Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: _buttonList)),
            Padding(
              child: Image.asset(CompodImages.osascoLogo, height: 80),
              padding: const EdgeInsets.all(padding),
            ),
          ],
        ),
      ),
    );
  }
}
