import 'package:flutter/material.dart';
import 'package:carrinhofav/controllers/product_controller.dart';
import 'package:carrinhofav/controllers/user_controller.dart';
import 'package:carrinhofav/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserController()),
        ChangeNotifierProvider(create: (context) => ProductController())
      ],
      child: MaterialApp(
        title: 'Ecommerce Henry',
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
