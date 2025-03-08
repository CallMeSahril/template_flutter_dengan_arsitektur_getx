import 'package:get/get.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/modules/products/controllers/products_controller.dart';

class TransactionController extends GetxController {
  //TODO: Implement TransactionController
final productsController = Get.find<ProductsController>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
