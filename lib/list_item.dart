import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pomme_poire_ananas/utils.dart';

class ListItem extends StatelessWidget {
  final int number;
  late String value;
  late String image;

  ListItem({super.key, required this.number}) {
    List<String> tmp = Utils().resolveImage(number);
    image = tmp[0];
    value = tmp[1];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) => print('caca'),
      child: Container(
        color: Utils().pairImpairColor[number % 2 == 0],
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
