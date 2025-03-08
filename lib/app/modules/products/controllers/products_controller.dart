import 'package:get/get.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_model.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_service_interface.dart';

class ProductsController extends GetxController {
  ProductServiceInterface productService;
  ProductsController({required this.productService});
  var products = <Product>[].obs;
  var isLoading = true.obs;
  
  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  Future<void> getProducts() async {
    isLoading(true);
    final respon = await productService.getProducts();
    if (respon.data != null) {
      products.value = respon.data!;
    } else {
      Get.snackbar('Error', respon.message ?? 'Failed to load products');
    }
    isLoading(false);
  }
}
