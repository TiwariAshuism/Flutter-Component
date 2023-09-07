import 'package:http/http.dart' as http;

import '../models/products_models.dart';

class ProductRepo {
  Future<List<Products>> getProduct() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      return productsFromJson(response.body);
    } else {
      throw new Exception(
          "Failed to load products from jsonplaceholder.typicode.com");
    }
  }
}
