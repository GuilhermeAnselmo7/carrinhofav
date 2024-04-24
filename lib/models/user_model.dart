import 'package:carrinhofav/models/product_model.dart';

class UserModel {
  String username;
  String email;
  List<ProductModel> products = [];
  List<ProductModel> favorites = [];

  UserModel({required this.username, required this.email});

  // Adiciona um produto à lista de produtos do usuário
  void addProduct(ProductModel product) {
    products.add(product);
  }

  // Adiciona um produto à lista de favoritos do usuário
  void addFavorite(ProductModel product) {
    // Verifica se o produto já está na lista de favoritos antes de adicionar
    if (!favorites.contains(product)) {
      favorites.add(product);
    }
  }
}