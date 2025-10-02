import 'dart:math';

import 'package:flutter/material.dart';

class Utils {
  Map<bool, MaterialColor> pairImpairColor = {
    true: Colors.orange,
    false: Colors.lightGreen,
  };

  List<Color> getColorButton() {
    final int random = Random().nextInt(360);
    final HSLColor buttonBG = HSLColor.fromAHSL(1.0, random as double, 1, 1);
    final HSLColor text = HSLColor.fromAHSL(1.0, random - 120 as double, 1, 1);

    return [buttonBG.toColor(), text.toColor()];
  }
}
