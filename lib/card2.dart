import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';
// import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
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
              image: AssetImage("assets/mag5.png"), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            AuthorCard(authorName: "Amr Hesham", title: "Senior iOS", imageProvider: AssetImage("assets/author_katz.jpeg"))
            // TODO 4: add Positioned text
          ],
        ),
      ),
    );
  }
}
