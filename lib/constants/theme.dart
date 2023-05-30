// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    appBarTheme: const AppBarTheme(),
    fontFamily: "Roboto",
    scaffoldBackgroundColor: TColor.beige,
    textTheme: textTheme(),
    backgroundColor: TColor.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

mixin themeBack {
  static ThemeData lightTeme = ThemeData(brightness: Brightness.light);
  static ThemeData darkTeme = ThemeData(brightness: Brightness.dark);
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      color: TColor.font,
    ),
    bodyText2: TextStyle(color: TColor.font),
  );
}

AppBarTheme AppBar(BuildContext context) {
  return AppBarTheme(
    toolbarHeight: MediaQuery.of(context).size.height * 0.09,
    color: TColor.beige,
    backgroundColor: TColor.beige,
  );
}
