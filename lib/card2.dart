import 'package:flutter/material.dart';
// import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/mag2.png"), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            // TODO 1: add author information
            // TODO 4: add Positioned text
          ],
        ),
      ),
    );
  }
}
