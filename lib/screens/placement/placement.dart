import 'package:flutter/material.dart';
import 'package:test/screens/component/custom_bottom_bar.dart';
import 'package:test/screens/component/appbar/appbar_home.dart';
import 'package:test/screens/placement/components/body_placement.dart';

class PlacementPage extends StatefulWidget {
  static String routeNames = "/placement";

  @override
  State<PlacementPage> createState() => _PlacementPageState();
}

class _PlacementPageState extends State<PlacementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        context,
        title1: "Placement'",
      ),
      bottomNavigationBar: const CustomBottomBar(
        selectedMenu: MenuState.cart,
      ),
      // BottomNavigationBarHome(),
      body: const BodyPlacement(),
    );
  }
}
