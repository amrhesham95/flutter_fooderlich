import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({required Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mag2.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            // TODO 5: add dark overlay BoxDecoration
            // TODO 6: Add Container, Column, Icon and Text
            // TODO 7: Add Center widget with Chip widge children
          ],
        ),
      ),
    );
  }

}