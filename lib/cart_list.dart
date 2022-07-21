import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_cart/product.dart';

class CartList extends StatefulWidget {
  List<Product> products;
  Function removeProduct;

  CartList(this.products, this.removeProduct);
  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KOSZYK"),
      ),
      body: ListView(
        children: widget.products.map((e) {
          return Card(
            child: Row(
              children: [
                Text(e.name),
                IconButton(icon: Icon(Icons.remove) ,onPressed: (() => widget.removeProduct(e)))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
