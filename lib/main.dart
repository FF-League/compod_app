import 'package:compod_app/commons/compod_themes.dart';
import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
