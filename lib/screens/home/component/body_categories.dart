
import 'package:flutter/material.dart';
import 'package:test/screens/component/body_card/body_card_menage.dart';
import 'package:test/screens/component/body_card/body_card_nounou.dart';
import 'package:test/screens/component/body_card/body_card_pressing.dart';

class BodyCategoriesHomePage extends StatelessWidget {
  const BodyCategoriesHomePage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        height: size.height * 0.80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                'Ménage',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            BodyCardMenageAll(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                'Pressing',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            BodyCardPressingAll(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                'Nounou',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            BodyCardNounouAll(),
          ],
        ),
      ),
    );
  }
}
