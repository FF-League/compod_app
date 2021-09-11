import 'package:compod_app/forms/views/internation_description_view.dart';
import 'package:compod_app/forms/views/internation_select_view.dart';
import 'package:compod_app/home/view/home_view.dart';
import 'package:get/get.dart';

class Routes {

  static final pages = [
    GetPage(name: '/internation', page: () => InternationSelectView()),
    GetPage(name: '/internation/description', page: () => InternationDescriptionView()),
    GetPage(name: '/', page: () => HomeView()),
  ];

}