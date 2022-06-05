import 'package:flutter/material.dart';
import 'package:shoping_cart/model/product.dart';

class UserCart extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  void addProductToCart(Product product) {
    _products.add(product);
    debugPrint('Adding Product : ${product.productName}');
    notifyListeners();
  }

  void removrProductFromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  double get totalPrice =>
      products.fold(0, (total, currentProduct) => total + currentProduct.price);
}
