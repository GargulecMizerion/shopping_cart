// ignore_for_file: use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_cart/new_product.dart';
import 'package:shopping_cart/product.dart';
import 'package:shopping_cart/product_list_arguments.dart';
import 'package:shopping_cart/shopping_list.dart';

import 'shop.dart';

class ProductList extends StatefulWidget {
  static const routeName = "/productList";

  List<Shop> shops;
  Function addProduct;
  Function deleteProduct;
  Function addToCart;
  List<Product> cart;

  ProductList(this.shops, this.addProduct, this.deleteProduct, this.addToCart,
      this.cart);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  void deleteAndBack(ProductListArguments args) {
    Navigator.pop(context);
    args.function(args.shop);
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ProductListArguments;

    var indexOfShop = widget.shops.indexOf(args.shop);

    return Scaffold(
      appBar: AppBar(
        title: Text(args.shop.name),
        actions: [
          IconButton(
              onPressed: () => deleteAndBack(args), icon: Icon(Icons.delete)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cartList");
              },
              icon: const Icon(Icons.shopping_cart_rounded))
        ],
      ),
      body: Column(
        children: args.shop.products.map((e) {
          return Card(
            color: widget.cart.contains(e) ? Colors.green : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            e.name.toUpperCase(),
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                        Text(e.amount.toString())
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            widget.addToCart(e);
                            setState(() {
                              
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete_forever),
                          onPressed: () =>
                              widget.deleteProduct(args.shop.products, e),
                        )
                      ],
                    ),
                  ]),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: NewProduct(
                      widget.addProduct, widget.shops[indexOfShop].products),
                );
              });
        },
      ),
    );
  }
}
