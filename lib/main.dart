import 'package:compod_app/commons/compod_themes.dart';
import 'package:compod_app/commons/routes.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Strings(),
      locale: const Locale('pt', 'BR'),
      title: StringsEnum.compod.tr,
      theme: CompodThemes.theme,
      getPages: Routes.pages,
      initialRoute: RoutesEnum.home.route,
    );
  }
}
