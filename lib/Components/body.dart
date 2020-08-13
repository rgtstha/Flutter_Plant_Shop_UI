import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_shop_ui/Screens/product_detail.dart';
import '../constants.dart';
import '../models/product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Plants',
              style: kHeadingText,
            ),
          ),
          CategoryList(),
          ProductView(),
        ],
      ),
    );
  }
}

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductDetail()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 150,
                          decoration: BoxDecoration(
                              color: kProductCard,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(70),
                                  topRight: Radius.circular(70),
                                  bottomRight: Radius.circular(70))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products[index].productName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text(
                                  '\$' + products[index].price.toString(),
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -70,
                        bottom: 0,
                        child: Container(
                          height: 400,
                          width: 200,
                          child: SvgPicture.asset(
                            'assets/images/flower.svg',
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Description'),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  )
                ],
              ),
              Text('Thi is description Section'),
            ],
          ),
        )
      ],
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int categorySelectedIndex = 0;

  List categories = ['All', 'Outdoor', 'Indoor', 'Seeds', 'Flowers'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      height: 40.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                categorySelectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 40.0),
              child: Column(
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                        fontSize: 18.0,
                        color: index == categorySelectedIndex
                            ? kCategorySelected
                            : Colors.black54),
                  ),
                  Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      color: index == categorySelectedIndex
                          ? kCategorySelected
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
