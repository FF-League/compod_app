import 'package:compod_app/mini_book/controller/mini_book_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniBookButton extends GetView<MiniBookController> {
  const MiniBookButton({Key? key, required this.type}) : super(key: key);

  final MiniBookButtonType type;

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialButton(
          key: key,
          disabledColor: Colors.grey,
          color: Get.theme.colorScheme.secondaryVariant,
          onPressed: type == MiniBookButtonType.next ? (controller.isNextButtonEnabled ? controller.goToNextPage : null) : (controller.isPreviousButtonEnabled ? controller.goToPreviousPage : null),
          shape: const CircleBorder(),
          child: Icon(
            type == MiniBookButtonType.next ? Icons.arrow_forward_rounded : Icons.arrow_back_rounded,
            size: 24.0,
          ),
        ));
  }
}

enum MiniBookButtonType { next, previous }
