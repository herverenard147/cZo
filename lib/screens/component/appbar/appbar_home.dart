import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/component/appbar/icon_buttom_bar.dart';
import 'package:test/screens/payement/payement.dart';

AppBar HomeAppBar(BuildContext context, {required String title1}) {
  final Size size = MediaQuery.of(context).size;
  return AppBar(
    backgroundColor: TColor.beige,
    leading: IconButtomBar(
      icon: Icons.notifications,
      press: () {},
      size: size,
      numItems: 3,
    ),
    actions: [
      IconButtomBar(
        size: size,
        icon: Icons.shopping_cart_outlined,
        press: () {
          Navigator.pushNamed(context, PayementPage.routeNames);
        },
        numItems: 0,
      )
    ],
    elevation: 0,
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: title1,
            // "C'",
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          TextSpan(
            text: "zO",
            style: TextStyle(
              fontSize: 30,
              color: TColor.text,
            ),
          ),
        ],
      ),
    ),
  );
}
