import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewShop extends StatefulWidget {
  Function addShop;

  NewShop(this.addShop);

  @override
  State<NewShop> createState() => _NewShopState();
}

class _NewShopState extends State<NewShop> {
  var addShopController = TextEditingController();

  void submitData() {
    var enteredShopName = addShopController.text;

    if (enteredShopName.isEmpty) {
      return;
    }

    addShopController.clear();
    widget.addShop(enteredShopName);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(200, 255, 255, 255),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: addShopController,
              onSubmitted: (_) => submitData(),
              decoration: InputDecoration(
                fillColor: Colors.white,
                label: Text("Add new list"),
              ),
            ),
            TextButton(onPressed: submitData, child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
