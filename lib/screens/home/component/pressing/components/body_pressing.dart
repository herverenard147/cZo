import 'package:flutter/material.dart';
import 'package:test/screens/home/component/pressing/components/body_card_pressing.dart';

class BodyPressingPage extends StatefulWidget {
  const BodyPressingPage({super.key});

  @override
  State<BodyPressingPage> createState() => _BodyPressingPageState();
}

class _BodyPressingPageState extends State<BodyPressingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: size.height * 0.80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  BodyCardPressing(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
