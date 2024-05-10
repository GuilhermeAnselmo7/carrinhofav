import 'package:flutter/material.dart';
import 'package:carrinhofav/controllers/product_controller.dart';
import 'package:carrinhofav/controllers/user_controller.dart';
import 'package:carrinhofav/models/product_model.dart';
import 'package:carrinhofav/pages/carrinho.dart';
import 'package:carrinhofav/pages/favoritos.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  UserController userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 249, 241),
      appBar: AppBar(
        title: const Text(
          'Produtos',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favoritos()));
              },
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carrinho()));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Consumer2<ProductController, UserController>(
          builder: (context, product, userController, child) {
        List<ProductModel> products = product.products;
        return Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        ListTile(title: Text(products[index].name)),
                        ListTile(
                          title: Text(
                            products[index].price.toString(),
                          ),
                        )
                      ],
                    )),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          ProductModel product = ProductModel(
                              name: products[index].name,
                              price: products[index].price,
                              description: products[index].description);
                          userController.addFavorites(
                              "kaiquehenry@senai.com.br", product);
                        },
                        icon: Icon(Icons.favorite_border_outlined)),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
