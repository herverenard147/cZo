import 'package:flutter/material.dart';
import 'package:test/screens/component/custom_bottom_bar.dart';
import 'package:test/screens/store/components/body_store.dart';
import 'package:test/screens/component/appbar/appbar_home.dart';

class StorePage extends StatelessWidget {
  static String routeNames = "/store";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        context,
        title1: "Store'",
      ),
      bottomNavigationBar: const CustomBottomBar(selectedMenu: MenuState.store,),
      body: const BodyStore(),
    );
  }
}
