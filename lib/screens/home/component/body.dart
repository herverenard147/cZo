import 'package:flutter/material.dart';
import 'package:test/screens/home/component/body_categories.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: BodyCategoriesHomePage(),
        ),
      ],
    );
  }
}
