import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/mini_book/components/mini_book_button.dart';
import 'package:compod_app/mini_book/controller/mini_book_controller.dart';
import 'package:compod_app/mini_book/mini_book_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniBookView extends GetView<MiniBookController> {
  final MiniBookController controller = Get.put(MiniBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MiniBookButton(type: MiniBookButtonType.previous),
              Obx(() => Text('Página ${controller.currentPage}/${controller.pdfDocument.value?.pagesCount ?? 0}', style: Get.textTheme.subtitle1?.copyWith(color: Colors.white))),
              MiniBookButton(type: MiniBookButtonType.next),
            ],
          ),
        ],
      ),
      appBar: CompodAppBar(text: MiniBookStringsEnum.name.name.tr),
      body: Obx(
        () => InteractiveViewer(
          maxScale: 3.0,
          child: Center(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(12.0),
              child: controller.currentPageBytes.value == null ? CircularProgressIndicator() : Image(image: MemoryImage(controller.currentPageBytes.value!)),
            ),
          ),
        ),
      ),
    );
  }
}