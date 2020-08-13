import 'package:flutter/material.dart';
import '../Components/appbar.dart';
import '../Components/body.dart';
import '../Components/floating_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Colors.transparent, Icons.search),
      body: Body(),
      floatingActionButton: CustomFloatingButton(),
    );
  }
}
