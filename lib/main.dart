import 'package:flutter/material.dart';
import 'package:shopping_cart/display.dart';
import 'package:shopping_cart/product_list.dart';
import 'package:shopping_cart/shopping_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Display(),
      
    );
  }
}
