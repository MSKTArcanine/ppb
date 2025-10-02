import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/list_item.dart';

class DynamicList extends StatelessWidget {
  final List<int> list;
  final void Function(int) handleDelete;

  const DynamicList({
    super.key,
    required this.list,
    required this.handleDelete,
  });

  List<ListItem> generateList() {
    return List.generate(
      list.length,
      (i) =>
          ListItem(number: list[i], handleDelete: () => handleDelete(list[i])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: generateList());
  }
}
