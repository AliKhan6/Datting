import 'package:flutter/material.dart';

class TwoHearts extends StatelessWidget {
  final heartColor;
  TwoHearts({this.heartColor});
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Icon(Icons.favorite_border,size: 130,color: heartColor,)),
            Positioned(
                top: 140,
                left: 70,
                child: Icon(Icons.favorite,size: 40,color: heartColor,))
          ],
        ),
      ],
    );
  }
}
