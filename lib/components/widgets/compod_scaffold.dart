import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodScaffold extends Scaffold {
  CompodScaffold({
    required String appBarTitle,
    Widget? body,
    Key? key,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    Widget? floatingActionButton,
    Color? backgroundColor,
  }) : super(
          key: key,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
          backgroundColor: Get.theme.backgroundColor,
          appBar: CompodAppBar(text: appBarTitle),
          body: Container(
            color: const Color(0xFF005A87),
            child: Container(
              decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(50)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor ?? Get.theme.backgroundColor,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(50)),
                ),
                child: body,
              ),
            ),
          ),
        );
}
