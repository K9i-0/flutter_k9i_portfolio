import 'package:flutter/material.dart';

/// https://flutter.dev/brand
enum FlutterBrandColors {
  flutterSky(Color(0xFF027DFD)),
  flutterBlue(Color(0xFF0553B1)),
  flutterNavy(Color(0xFF042B59)),
  red(Color(0xFFF25D50)),
  yellow(Color(0xFFFFF275)),
  purple(Color(0xFF6200EE)),
  green(Color(0xFF1CDAC5));

  final Color color;
  const FlutterBrandColors(this.color);
}
