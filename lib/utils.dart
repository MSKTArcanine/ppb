import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/fruits.dart';

class Utils {
  Map<bool, MaterialColor> pairImpairColor = {
    true: Colors.orange,
    false: Colors.lightGreen,
  };

  List<Color> getColorButton() {
    final int random = Random().nextInt(360);
    final HSLColor buttonBG = HSLColor.fromAHSL(
      1.0,
      double.parse('$random'),
      1,
      0.5,
    );
    final HSLColor text = HSLColor.fromAHSL(
      1.0,
      calculateHueSub(random, 120),
      1,
      0.5,
    );

    return [buttonBG.toColor(), text.toColor()];
  }

  double calculateHueSub(int hue, int sub) {
    if (hue - 120 > 0) {
      return hue - 120;
    } else {
      return 360 + (hue - 120);
    }
  }

  String resolveImage(int number) {
    late Fruits res;
    if (isPremier(number)) {
      res = Fruits.ananas;
    } else {
      res = (number % 2 == 0) ? Fruits.poire : Fruits.pomme;
    }
    return 'images/${res.value}-min.png';
  }

  bool isPremier(int number) {
    if (number == 1) {
      return false;
    }
    if (number % 2 != 0 || number == 2) {
      if (number % 3 != 0 || number == 3) {
        if (number % 5 != 0 || number == 5) {
          if (number % 7 != 0 || number == 7) {
            return true;
          }
        }
      }
    }
    return false;
  }
}
