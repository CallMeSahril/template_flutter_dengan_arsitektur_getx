import 'package:get/get.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_service_interface.dart';

import '../controllers/products_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    ProductServiceInterface.createInstance();
    Get.lazyPut<ProductsController>(
      () => ProductsController(productService: Get.find<ProductServiceInterface>()),
    );
  }
}
