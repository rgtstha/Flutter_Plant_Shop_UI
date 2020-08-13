import 'package:flutter/material.dart';
import 'package:plant_shop_ui/Screens/cart_page.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Shop',
      home: HomePage(),
    );
  }
}
