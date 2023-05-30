import 'package:flutter/material.dart';
import 'package:test/screens/component/custom_bottom_bar.dart';

class BottomNavigationBarHome extends StatelessWidget {
  const BottomNavigationBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBottomBar(
      selectedMenu: MenuState.home,
    );
  }
}
