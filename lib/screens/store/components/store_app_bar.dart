import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/payement/payement.dart';

AppBar StoreAppBar(BuildContext context,
    {required String title1}) {
  return AppBar(
    backgroundColor: TColor.beige,
    leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications,
          size: 29,
          color: TColor.icon,
        ),
      ),
    // IconButton(
    //   icon: Icon(
    //     Icons.menu,
    //     size: 29,
    //     color: TColor.beige,
    //   ),
    //   onPressed: () {},
    // ),
    // IconButton(
    //   icon: ,
    //   // const Icon(
    //   //   Icons.menu,
    //   //   size: 29,
    //   // ),
    //   onPressed: () {},
    // ),
    actions: [
      
      IconButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PayementPage(),
            ),
          );
        },
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 29,
          color: TColor.icon,
        ),
        // SvgPicture.asset("assets/icons/cart.svg"),
      )
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
              color: TColor.text,
            ),
          ),
        ],
      ),
    ),
  );
}
