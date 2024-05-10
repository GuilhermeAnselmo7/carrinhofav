import 'package:flutter/material.dart';
import 'package:carrinhofav/models/product_model.dart';

class ProductController with ChangeNotifier {

  final List<ProductModel> _products = [
    ProductModel(name: 'PC Gamer', price: 10000.00, description: 'M3'),
    ProductModel(name: 'Celular', price: 7000.00, description: 'Iphone 15'),
    ProductModel(name: 'Caixa de som', price: 550.00, description: 'JBL')
  ];
  
  List<ProductModel> get products => _products;
}