import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/data/repository/base/products_local.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductsLocalRepoImpl implements ProductsLocalRepoBase {
  @override
  Future<void> addProduct(TOTProduct product) async {
    final box = Hive.box<TOTProduct>("fav");
    box.put("products", product);
  }

  @override
  Future<List<TOTProduct>> getProducts() async {
    List<TOTProduct> products = [];
    final box = Hive.box("fav");
    for (int i = 0; i < box.length; i++) {
      if (box.get(i) != null) {
        products.add(box.get(i));
      }
    }
    // final List<TOTProduct>? result = await Hive.box('fav').getAt();
    // if (result!.isNotEmpty) {
    //   for (var product in result) {
    //     products.add(product);
    //   }
    // }

    return products;
  }

  @override
  Future<void> removeProduct(String productId) async {
    final box = Hive.box<List<TOTProduct>?>("fav");
    box.delete(productId);
  }
}
