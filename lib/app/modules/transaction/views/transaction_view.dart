import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransactionView'),
        centerTitle: true,
      ),
      body: Obx(() => controller.productsController.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.productsController.products.length,
              itemBuilder: (context, index) {
                final product = controller.productsController.products[index];
                return ListTile(
                  title: Text(product.title.toString()),
                  subtitle: Text(product.price.toString()),
                );
              },
            )),
    );
  }
}
