// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_cart/new_shop.dart';
import 'package:shopping_cart/product.dart';
import 'package:shopping_cart/product_list.dart';
import 'package:shopping_cart/product_list_arguments.dart';
import 'package:shopping_cart/shop_card.dart';

import 'shop.dart';

class ShoppingList extends StatefulWidget {
  List<Shop> shops;
  ShoppingList(this.shops);

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  void createShop(String title) {
    setState(() {
      widget.shops.add(Shop(title, []));
    });
  }

  void deleteShop(Shop shop) {
    setState(() {
      widget.shops.remove(shop);
    });
  }

  // List<Shop> shops = [
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  //   Shop("Lewiatan", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25)
  //   ]),
  //   Shop("Biedronka", [
  //     Product("Pomidory", 3),
  //     Product("Ogórki", 7),
  //     Product("Chipsy", 2),
  //     Product("Schab", 25),
  //     Product("Proszek do prania", 2),
  //     Product("Papier toaletowy", 1),
  //     Product("Przyprawa do bigosu", 2),
  //   ]),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text("TWOJE LISTY"),
        backgroundColor: Color.fromARGB(255, 14, 0, 164),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cartList");
              },
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 2, 35, 120),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: widget.shops.map((e) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/productList",
                            arguments: ProductListArguments(e, deleteShop));
                      },
                      child: ShopCard(e.name, e.products.length.toString()));
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Color.fromARGB(255, 14, 0, 164),
              context: context,
              builder: (_) {
                return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewShop(createShop),
                    ));
              });
        },
        iconSize: 48,
        color: Colors.orange,
        disabledColor: Colors.black12,
        splashColor: Colors.deepOrange,
      ),
    );
  }
}
