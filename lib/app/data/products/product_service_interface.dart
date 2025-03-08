import 'package:get/get.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_model.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_service_dio.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/respone/respone_model.dart';

abstract interface class ProductServiceInterface {
  Future<ResponModelList<Product>> getProducts();

  static void createInstance(){
    Get.put<ProductServiceInterface>(ProductServiceDio(),permanent: true);
  }
}