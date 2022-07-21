import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_cart/cart_list.dart';
import 'package:shopping_cart/new_product.dart';

import 'product.dart';
import 'product_list.dart';
import 'shop.dart';
import 'shopping_list.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  List<Shop> _shops = [
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
    Shop("Lewiatan", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25)
    ]),
    Shop("Biedronka", [
      Product("Pomidory", 3),
      Product("Ogórki", 7),
      Product("Chipsy", 2),
      Product("Schab", 25),
      Product("Proszek do prania", 2),
      Product("Papier toaletowy", 1),
      Product("Przyprawa do bigosu", 2),
    ]),
  ];

  List<Product> cart = [];

  // Usuwanie produktów z listy sklepowej
  void deleteProduct(List<Product> products, Product product) {
    setState(() {
      products.remove(product);
    });
  }

  // Dodawanie produktu do listy sklepowej
  void addNewProduct(List<Product> products, Product product) {
    setState(() {
      products.add(product);
    });
  }

  // Wrzucanie produktu do koszyka
  void addProductToCart(Product product) {
    if (cart.contains(product)) {
      return;
    }
    cart.add(product);
  }

  void removeFromCart(Product product) {
    if (cart.contains(product)) {
      setState(() {
        cart.remove(product);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikacja",
      initialRoute: "/",
      routes: {
        "/": (context) => ShoppingList(_shops),
        "/productList": (context) => ProductList(
            _shops, addNewProduct, deleteProduct, addProductToCart, cart),
        "/cartList": (context) => CartList(cart, removeFromCart),
      },
    );
  }
}
