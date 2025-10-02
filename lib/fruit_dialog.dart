import 'package:flutter/material.dart';

class FruitDialog extends StatelessWidget {
  final String title;
  final MaterialColor color;
  final String image;
  const FruitDialog({
    super.key,
    required this.title,
    required this.color,
    required this.image,
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
      ],
    );
  }
}
