import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Components/appbar.dart';
import '../constants.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCategorySelected,
      appBar: myAppBar(Colors.white, Icons.shopping_cart),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lamb\'s Ear',
                    style: kHeadingText,
                  ),
                  Text('Flower', style: kCategoryText),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('\$147', style: kProductPrice),
                            Spacer(),
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(2, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.bookmark_border,
                                color: kButton,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                color: kButton,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(2, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/flower.svg',
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: 70,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                SwtCard(
                  icon: Icons.wb_sunny,
                  title: "Sunlight",
                  subTitle: "Light",
                ),
                Spacer(),
                SwtCard(
                  icon: Icons.location_on,
                  title: "Low Water",
                  subTitle: "Water",
                ),
                Spacer(),
                SwtCard(
                  icon: Icons.whatshot,
                  title: "28°c",
                  subTitle: "Temper",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SwtCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  SwtCard({this.icon, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          color: Color(0xff84B42C),
          borderRadius: BorderRadius.only(
              topLeft:
                  Radius.circular(MediaQuery.of(context).size.width * 0.25),
              topRight:
                  Radius.circular(MediaQuery.of(context).size.width * 0.25))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.width * 0.25 - 20,
            width: MediaQuery.of(context).size.width * 0.25 - 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width * 0.25 - 20),
            ),
            child: Icon(
              icon,
              color: Colors.orangeAccent,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: swtCardTitle,
              ),
              Text(
                subTitle,
                style: swtCardSubtitle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
