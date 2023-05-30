
import 'package:flutter/material.dart';

enum BottomBarIndex {
  home,
  cart,
  placement,
  profil,
}
class BottomBar {
  BottomBar( {
    this.labelName = '',
    this.icon,
    this.index,
    required this.page,
  });

  String labelName;
  Icon? icon;
  BottomBarIndex? index;
  Widget page;
}