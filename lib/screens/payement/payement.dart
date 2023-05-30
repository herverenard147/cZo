import 'package:flutter/material.dart';
import 'package:test/screens/component/bottom_bar.dart';
import 'package:test/screens/payement/components/app_bar_payement.dart';
import 'package:test/screens/payement/components/body_payement.dart';

class PayementPage extends StatelessWidget {
  static String routeNames = "/payement";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PayementAppBar(
        context,
        title1: "Payement'",
        title2: "",
      ),
      bottomNavigationBar: const BottomNavigationBarHome(),
      body: const BodyPayement(),
    );
  }
}
