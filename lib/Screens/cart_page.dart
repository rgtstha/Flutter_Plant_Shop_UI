import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_shop_ui/models/product.dart';

import '../constants.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Color(0xffC0C2C4),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cart',
                  style: kHeadingText,
                ),
                Text(
                  '\$284',
                  style: kProductPrice,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CartProducts()
        ],
      ),
    );
  }
}

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      products[index].imageUrl,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(products[index].productName),
                        Text('Outdoor'),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(products[index].price.toString()),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xffC0C2C4),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _counter++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                        Text(_counter.toString()),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _counter = _counter != 1
                                  ? _counter = _counter - 1
                                  : _counter = 1;
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
