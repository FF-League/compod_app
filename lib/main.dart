import 'package:compod_app/commons/compod_themes.dart';
import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Strings(),
      locale: Locale('pt', 'BR'),
      title: StringsEnum.COMPOD.tr,
      theme: CompodThemes.theme,
      getPages: Routes.pages,
      initialRoute: RoutesEnum.home.route,
    );
  }
}
