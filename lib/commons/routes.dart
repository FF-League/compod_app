import 'package:compod_app/hospitalization/views/hospitalization_form.dart';
import 'package:compod_app/hospitalization/views/hospitalization_description_view.dart';
import 'package:compod_app/hospitalization/views/hospitalization_select_view.dart';
import 'package:compod_app/hospitalization/views/success_view.dart';
import 'package:compod_app/home/view/home_view.dart';
import 'package:compod_app/mini_book/view/mini_book_view.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class Routes {

  static final pages = [
    GetPage(name: RoutesEnum.hospitalization.route, page: () => HospitalizationSelectView()),
    GetPage(name: RoutesEnum.hospitalizationForm.route, page: () => HospitalizationForm()),
    GetPage(name: RoutesEnum.hospitalizationDescription.route, page: () => HospitalizationDescriptionView()),
    GetPage(name: RoutesEnum.hospitalizationSuccess.route, page: () => SuccessView()),
    GetPage(name: RoutesEnum.minibook.route, page: () => MiniBookView()),
    GetPage(name: RoutesEnum.home.route, page: () => HomeView()),
  ];
}

enum RoutesEnum {
  hospitalization,
  hospitalizationSuccess,
  hospitalizationForm,
  hospitalizationDescription,
  minibook,
  home,
}

extension RoutesEnumExt on RoutesEnum {
  String get route => '/${describeEnum(this).replaceAll('_', '/')}';
}