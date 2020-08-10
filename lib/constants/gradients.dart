import 'package:flutter/material.dart';

class Gradients {
  Gradients._();

  static var bgGradient = LinearGradient(
    colors: [
      const Color(0xFFFE5196),
      const Color(0xFFF77062),
    ],
    tileMode: TileMode.clamp,
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [
      0.0,
      1.0,
    ],
  );
}
