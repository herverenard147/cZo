// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/payement/payement.dart';
import 'package:test/screens/component/search_box.dart';
import 'package:test/screens/component/appbar/icon_buttom_bar.dart';

AppBar HomeAppBarCustom(BuildContext context, {required String title1}) {
  final Size size = MediaQuery.of(context).size;
  List<Tab> categories = [
    const Tab(
      child: Text(
        "Tout",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
    const Tab(
      child: Text(
        "Ménage",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
    const Tab(
      child: Text(
        "Pressing",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
    const Tab(
      child: Text(
        "Nounou",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
  ];
  return AppBar(
    backgroundColor: TColor.white,
    leading: IconButtomBar(
      icon: Icons.menu,
      press: () {},
      size: size,
      // numItems: 3,
    ),
    actions: [
      IconButtomBar(
        size: size,
        icon: Icons.shopping_cart_outlined,
        press: () {
          Navigator.pushNamed(context, PayementPage.routeNames);
        },
        numItems: 0,
      ),
      IconButtomBar(
        icon: Icons.notifications,
        press: () {},
        size: size,
        numItems: 3,
      ),
    ],
    elevation: 0,
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .bodyLarge
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
              color: TColor.font,
            ),
          ),
        ],
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(size.height * 0.170),
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          // const Categories(),
          TabBar(
            tabs: categories,
            isScrollable: true,
            indicatorColor: TColor.font,
          )
        ],
      ),
    ),
  );
}
