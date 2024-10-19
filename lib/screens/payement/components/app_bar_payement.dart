import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

AppBar PayementAppBar(BuildContext context,
    {required String title1, required String title2}) {
  return AppBar(
    backgroundColor: TColor.beige,
    toolbarHeight: MediaQuery.of(context).size.height * 0.09,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new,
        size: 29,
        color: TColor.icon,
      ),
      // const Icon(
      //   Icons.menu,
      //   size: 29,
      // ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
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
