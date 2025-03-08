import 'package:dio/dio.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_model.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_service_interface.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/respone/respone_model.dart';

class ProductServiceDio implements ProductServiceInterface {
  final String url = 'https://dummyjson.com/products';
   Dio dio = Dio();
  @override
  Future<ResponModelList<Product>> getProducts() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return ResponModelList<Product>(
            status: 'success',
            code: response.statusCode,
            data: (response.data['products'] as List)
          .map((json) => Product.fromJson(json))
          .toList());
      } else {
        return ResponModelList(message: 'Failed to load products');
      }
    } on DioException catch (e) {
      return ResponModelList(message: 'DioError: ${e.message}');
    } catch (e) {
      return ResponModelList(message: '$e');
    }
  }
}
