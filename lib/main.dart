import 'package:compod_app/forms/forms_view.dart';
import 'package:compod_app/forms/internation_description_view.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InternationDescriptionView(),
    );
  }
}
