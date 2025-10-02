import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/list_item.dart';

class DynamicList extends StatelessWidget {
  late List<int> list;

  DynamicList({super.key, required this.list});

  List<ListItem> generateList() {
    return List.generate(list.length, (n) => ListItem(number: list[n]));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: generateList());
  }
}
