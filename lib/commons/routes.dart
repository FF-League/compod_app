import 'package:compod_app/home/home_bindings.dart';
import 'package:compod_app/home/view/home_view.dart';
import 'package:compod_app/hospitalization/hospitalization_select_bindings.dart';
import 'package:compod_app/hospitalization/views/hospitalization_description_view.dart';
import 'package:compod_app/hospitalization/views/hospitalization_form_view.dart';
import 'package:compod_app/hospitalization/views/hospitalization_select_view.dart';
import 'package:compod_app/mini_book/mini_book_bindings.dart';
import 'package:compod_app/mini_book/view/mini_book_view.dart';
import 'package:compod_app/voluntary/views/voluntary_form_view.dart';
import 'package:compod_app/voluntary/views/voluntary_select_view.dart';
import 'package:compod_app/voluntary/voluntary_bindings.dart';
import 'package:get/get.dart';

class Routes {

  static final pages = [
    GetPage(name: RoutesEnum.hospitalization.route, page: () => const HospitalizationSelectView(), binding: HospitalizationSelectBindings()),
    GetPage(name: RoutesEnum.hospitalizationForm.route, page: () => HospitalizationFormView()),
    GetPage(name: RoutesEnum.hospitalizationDescription.route, page: () => const HospitalizationDescriptionView()),
    GetPage(name: RoutesEnum.miniBook.route, page: () => const MiniBookView(), binding: MiniBookBindings()),
    GetPage(name: RoutesEnum.home.route, page: () => const HomeView(), binding: HomeBindings()),
    GetPage(name: RoutesEnum.voluntary.route, page: () => const VoluntarySelectView(), binding: VoluntaryBindings()),
    GetPage(name: RoutesEnum.voluntaryForm.route, page: () => VoluntaryFormView()),
  ];
}

enum RoutesEnum {
  hospitalization,
  hospitalizationForm,
  hospitalizationDescription,
  miniBook,
  home,
  voluntary,
  voluntaryForm,
}

extension RoutesEnumExt on RoutesEnum {
  String get route => '/${name.replaceAll('_', '/')}';
}