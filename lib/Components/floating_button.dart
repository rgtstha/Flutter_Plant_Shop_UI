import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 120.0,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 60.0,
            width: 120.0,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(2, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.lightGreen),
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.white70,
            ),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.lightGreen, width: 5),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: (Text(
                    '3',
                    style: TextStyle(color: Colors.lightGreen),
                  ))),
            ),
          )
        ],
      ),
    );
  }
}
