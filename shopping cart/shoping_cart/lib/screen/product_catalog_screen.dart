import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/model/product.dart';
import 'package:shoping_cart/provider/user_cart_provider.dart';
import 'package:shoping_cart/screen/user_cart_screen.dart';
import 'package:shoping_cart/services/product_service.dart';

class ProductCatalog extends StatefulWidget {
  const ProductCatalog({Key? key}) : super(key: key);

  @override
  State<ProductCatalog> createState() => _ProductCatalogState();
}

class _ProductCatalogState extends State<ProductCatalog> {
  List<Product> products = ProductService().getProducts();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products Catalog'),
          backgroundColor: Colors.deepOrangeAccent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 10),
              child: GestureDetector(
                child: Badge(
                  toAnimate: false,
                  badgeContent: Text(
                    '${context.watch<UserCart>().products.length}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  child: const Icon(Icons.shopping_cart),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const UserCartScreen()),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(products[index].imageUrl),
              title: Text(products[index].productName),
              subtitle: Text('Rs. ${products[index].price.toString()}'),
              trailing: _AddItemButton(product: products[index]),
            );
          },
        ),
      ),
    );
  }
}

class _AddItemButton extends StatefulWidget {
  final Product product;
  const _AddItemButton({Key? key, required this.product}) : super(key: key);

  @override
  State<_AddItemButton> createState() => __AddItemButtonState();
}

class __AddItemButtonState extends State<_AddItemButton> {
  @override
  Widget build(BuildContext context) {
    var isProductExistInCart = context.select<UserCart, bool>(
      (UserCart) => UserCart.products.contains(widget.product),
    );
    return isProductExistInCart
        ? const Icon(Icons.check)
        : ElevatedButton(
            onPressed: () {
              context.read<UserCart>().addProductToCart(widget.product);
            },
            child: const Text('ADD'),
          );
  }
}
