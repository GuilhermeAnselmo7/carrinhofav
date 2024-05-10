import 'package:carrinhofav/models/product_model.dart';

class UserModel {
  String username;
  String email;
  List<ProductModel> products = [];
  List<ProductModel> favorites = []; 

  UserModel({required this.username, required this.email});

  void addProduct(ProductModel product) {
    products.add(product);
  }

  void addFavorite(ProductModel product) {
    if (!favorites.contains(product)) {
      favorites.add(product);
    }
  }

  void removeProduct(ProductModel product) {
    int index = products.indexOf(product);
    if (index != -1) {
      products.removeAt(index);
    }
  }

  void removeFavorite(ProductModel product) {
    int index = favorites.indexOf(product);
    if (index != -1) {
      favorites.removeAt(index);
    }
  }
}
