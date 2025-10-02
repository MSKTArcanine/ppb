import 'package:flutter/material.dart';

class FruitDialog extends StatelessWidget {
  final String title;
  final MaterialColor color;
  final String image;
  final VoidCallback handleDelete;
  const FruitDialog({
    super.key,
    required this.title,
    required this.color,
    required this.image,
    required this.handleDelete,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('nombre $title', textAlign: TextAlign.center),
      backgroundColor: color,
      content: Image.asset(image, width: 40, height: 40),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Ok"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            handleDelete();
          },
          child: const Text("Delete"),
        ),
      ],
    );
  }
}
