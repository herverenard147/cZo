import 'package:flutter/material.dart';
import 'package:test/screens/home/component/menage/components/body_card_menage.dart';

class BodyMenagePage extends StatefulWidget {
  const BodyMenagePage({super.key});

  @override
  State<BodyMenagePage> createState() => _BodyMenagePageState();
}

class _BodyMenagePageState extends State<BodyMenagePage> {
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyCardMenage(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
