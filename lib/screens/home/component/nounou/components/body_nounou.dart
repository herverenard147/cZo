import 'package:flutter/material.dart';
import 'package:test/screens/home/component/nounou/components/body_card_nounou.dart';

class BodyNounouPage extends StatefulWidget {
  const BodyNounouPage({super.key});

  @override
  State<BodyNounouPage> createState() => _BodyNounouPageState();
}

class _BodyNounouPageState extends State<BodyNounouPage> {
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
                  BodyCardNounou(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
