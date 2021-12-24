import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/mini_book/components/mini_book_button.dart';
import 'package:compod_app/mini_book/controller/mini_book_controller.dart';
import 'package:compod_app/mini_book/mini_book_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniBookView extends GetView<MiniBookController> {
  MiniBookView({Key? key}) : super(key: key);

  @override
  final controller = Get.put(MiniBookController());

  @override
  Widget build(BuildContext context) {
    return CompodScaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const MiniBookButton(type: MiniBookButtonType.previous),
              Container(
                color: Colors.black38,
                child: Obx(
                  () => Text(
                    ' Página ${controller.currentPage}/${controller.pdfDocument.value?.pagesCount ?? 0} ',
                    style:
                        Get.textTheme.subtitle1?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const MiniBookButton(type: MiniBookButtonType.next),
            ],
          ),
        ],
      ),
      appBarTitle: MiniBookStringsEnum.name.tr,
      body: Obx(
        () => InteractiveViewer(
          maxScale: 3.0,
          child: Center(
            child: Container(
              color: Colors.white,
              margin: const EdgeInsets.all(12.0),
              child: pageContent,
            ),
          ),
        ),
      ),
    );
  }

  Widget get pageContent {
    final content = controller.currentPageBytes.value;
    return content != null
        ? Image(image: MemoryImage(content))
        : const CircularProgressIndicator();
  }
}
