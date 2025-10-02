import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/fruit_dialog.dart';
import 'package:pomme_poire_ananas/utils.dart';

class ListItem extends StatelessWidget {
  final int number;
  late final String value;
  late final String image;
  late final MaterialColor color;

  ListItem({super.key, required this.number}) {
    List<String> tmp = Utils().resolveImage(number);
    image = tmp[0];
    value = tmp[1];
    color = Utils().pairImpairColor[number % 2 == 0]!;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) => showDialog(
        context: context,
        builder: (_) => FruitDialog(title: value, color: color, image: image),
      ),
      child: Container(
        color: color,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$number', style: TextStyle(color: Colors.white)),
              Image.asset(image, width: 40, height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
