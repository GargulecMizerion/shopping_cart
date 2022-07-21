import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  String shopName;
  String itemsAmount;

  ShopCard(this.shopName, this.itemsAmount);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              shopName,
              style: const TextStyle(
                color: Color.fromARGB(255, 2, 35, 120),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              itemsAmount,
              style: const TextStyle(
                color: Color.fromARGB(255, 2, 35, 120),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
