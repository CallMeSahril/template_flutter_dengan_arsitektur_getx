import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/data/products/product_service_dio.dart';


class MockDio extends Mock implements Dio {}

void main() {
  late ProductServiceDio productService;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    productService = ProductServiceDio();
    productService.dio = mockDio;
  });

  test('getProducts() seharusnya mengembalikan daftar produk ketika sukses', () async {
    // Arrange
    final mockResponse = {
      'products': [
        {'id': 1, 'title': 'Product A'},
        {'id': 2, 'title': 'Product B'}
      ]
    };
    when(() => mockDio.get(any())).thenAnswer((_) async => Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 200,
          data: mockResponse,
        ));

    // Act
    final result = await productService.getProducts();

    // Assert
    expect(result.data, isNotNull);
    expect(result.data!.length, 2);
    expect(result.data![0].title, 'Product A');
    expect(result.status, 'success');
  });

  test('getProducts() seharusnya mengembalikan error ketika gagal', () async {
    // Arrange
    when(() => mockDio.get(any())).thenAnswer((_) async => Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 500,
        ));

    // Act
    final result = await productService.getProducts();

    // Assert
    expect(result.data, isNull);
    expect(result.message, 'Failed to load products');
  });

  test('getProducts() seharusnya menangani DioException', () async {
    // Arrange
    when(() => mockDio.get(any())).thenThrow(DioException(requestOptions: RequestOptions(path: ''), message: 'Network error'));

    // Act
    final result = await productService.getProducts();

    // Assert
    expect(result.data, isNull);
    expect(result.message, contains('DioError: Network error'));
  });
}
