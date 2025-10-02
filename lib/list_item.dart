import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pomme_poire_ananas/utils.dart';

class ListItem extends StatelessWidget {
  final int number;

  const ListItem({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils().pairImpairColor[number % 2 == 0],
      child: Center(
        child: Text('$number', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
