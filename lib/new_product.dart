import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'product.dart';

class NewProduct extends StatefulWidget {
  Function addProduct;
  List<Product> products;

  NewProduct(this.addProduct, this.products);

  @override
  State<NewProduct> createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {
  var nameController = TextEditingController();
  var amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        TextField(
          controller: nameController,
          // onSubmitted: widget.addProduct(nameController.text, double.parse(amountController.text), widget.products),
          decoration: InputDecoration(label: Text("Nazwa produktu")),
        ),
        TextField(
          controller: amountController,
          // onSubmitted: widget.addProduct(nameController.text, double.parse(amountController.text) , widget.products),
          decoration: InputDecoration(label: Text("Nazwa produktu")),
        ),
        DropdownButton(
          items: const [
            DropdownMenuItem(
              child: Text("KG"),
              value: "KG",
            ),
            DropdownMenuItem(
              child: Text("G"),
              value: "G",
            ),
            DropdownMenuItem(child: Text("DAG"), value: "DAG"),
            DropdownMenuItem(child: Text("SZT"), value: "SZT"),
            DropdownMenuItem(child: Text("OPAK"), value: "OPAK")
          ],
          onChanged: (_) {},
          value: "KG",
        ),
        TextButton(
            onPressed: ()  {
                  widget.addProduct(
                      widget.products,
                      Product(nameController.text,
                          double.parse(amountController.text)));
                  nameController.clear();
                  amountController.clear();
                },
            child: Text("Dodaj")),
      ],
    ));
  }
}
