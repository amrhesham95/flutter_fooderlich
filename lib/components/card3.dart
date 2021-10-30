import 'package:flutter/material.dart';

import '../fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
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
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text(
                      'Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.headline2), // 9
                  const SizedBox(height: 30),
                ],
              ),
            ),
            // TODO 7: Add Center widget with Chip widge children
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children:
                  getChips()
              ),
            )
          ],
        ),
      ),
    );
  }
List<Chip> getChips() {
    const chipsNames = [
      "Healthy",
      "Vegan",
      "Carrots",
      "Greens",
      "Wheat",
      "Pascetarian",
      "Mint",
      "Lemongrass"
    ];

    return chipsNames.map( (chipName) =>
      Chip(
        label: Text(chipName,
            style: FooderlichTheme.darkTextTheme.bodyText1),
        backgroundColor: Colors.black.withOpacity(0.7),
        onDeleted: () {
          print("item deleted");
        },
      )).toList();
}
}