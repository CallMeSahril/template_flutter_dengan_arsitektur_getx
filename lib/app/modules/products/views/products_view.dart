import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:template_flutter_dengan_arsitektur_getx/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsView'),
        centerTitle: true,
      ),
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                final product = controller.products[index];
                return ListTile(
                  onTap: () => Get.toNamed(Routes.TRANSACTION),
                  title: Text(product.title.toString()),
                  subtitle: Text(product.price.toString()),
                );
              },
            )),
    );
  }
}
