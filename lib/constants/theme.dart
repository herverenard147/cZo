// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

// ThemeData theme(BuildContext context) {
//   return ThemeData(
//     appBarTheme: const AppBarTheme(),
//     fontFamily: "Roboto",
//     scaffoldBackgroundColor: TColor.white,
//     textTheme: textTheme(),
//     backgroundColor: TColor.white,
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//   );
// }

class CTheme {
  static ThemeData lightTeme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarLight(),
    fontFamily: "Roboto",
    scaffoldBackgroundColor: TColor.white,
    textTheme: textThemeLight(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static ThemeData darkTeme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(),
    fontFamily: "Roboto",
    scaffoldBackgroundColor: TColor.white,
    textTheme: textThemeDark(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textThemeLight() {
  return TextTheme(
    bodyLarge: TextStyle(
      color: TColor.subtitle,
    ),
    bodyMedium: TextStyle(color: TColor.subtitle),
  );
}

TextTheme textThemeDark() {
  return TextTheme(
    bodyLarge: TextStyle(
      color: TColor.subtitle,
    ),
    bodyMedium: TextStyle(color: TColor.subtitle),
  );
}

AppBarTheme AppBarLight() {
  return AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: TColor.white,
  );
}

AppBarTheme AppBarDark(BuildContext context) {
  return AppBarTheme(
    toolbarHeight: MediaQuery.of(context).size.height * 0.09,
    color: TColor.font,
    backgroundColor: TColor.font,
  );
}
