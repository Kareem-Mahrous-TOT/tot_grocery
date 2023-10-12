import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';

abstract class ProductsLocalRepoBase {
  Future<List<TOTProduct>> getProducts();
  Future<void> addProduct(TOTProduct product);
  Future<void> removeProduct(String productId);
}
