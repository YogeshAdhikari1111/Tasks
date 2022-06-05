import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/provider/user_cart_provider.dart';
import 'package:shoping_cart/screen/product_catalog_screen.dart';

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductCatalog(),
    );
  }
}

Future main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserCart()),
    ],
    child: const ShoppingApp(),
  ));
}
