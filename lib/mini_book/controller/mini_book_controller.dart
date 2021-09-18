import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';

class MiniBookController extends GetxController {
  Rx<PdfDocument?> pdfDocument = Rx(null);

  Rx<List<Uint8List>> pdfPages = Rx(List.empty(growable: true));

  Rx<Uint8List?> currentPageBytes = Rx(null);
  var currentPage = 1.obs;

  bool get isNextButtonEnabled => currentPage.value < (pdfDocument.value?.pagesCount ?? 0);
  bool get isPreviousButtonEnabled => currentPage.value > 1;

  Future<void> init() async {
    await getPage(currentPage.value);
  }

  @override
  void onInit() async {
    await init();
    super.onInit();
  }

  Future<void> getPage(int pageNumber) async {
    print(pageNumber);
    pdfDocument.value = await PdfDocument.openAsset('assets/pdf/mini_book.pdf');
    final pdfPage = await pdfDocument.value!.getPage(currentPage.value);
    final pageImage = await pdfPage.render(width: pdfPage.width, height: pdfPage.height);
    currentPageBytes.value = pageImage?.bytes;
  }

  Future<void> goToNextPage() async {
    if (currentPage < (pdfDocument.value?.pagesCount ?? 0)) {
      await getPage(++currentPage.value);
    }
  }

  Future<void> goToPreviousPage() async {
    if (currentPage > 1) {
      await getPage(--currentPage.value);
    }
  }
}
