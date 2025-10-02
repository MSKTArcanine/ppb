import 'package:flutter/widgets.dart';

class ListItem extends StatelessWidget {
  final int number;

  const ListItem({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$number'));
  }
}
