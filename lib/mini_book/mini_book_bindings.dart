import 'package:compod_app/mini_book/controller/mini_book_controller.dart';
import 'package:get/get.dart';

class MiniBookBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MiniBookController>(() => MiniBookController());
  }
}