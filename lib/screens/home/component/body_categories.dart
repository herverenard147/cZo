import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controller/office_Menage_controller.dart';
import 'package:test/controller/office_Pressing_controller.dart';
import 'package:test/screens/component/body_card/body_card_menage.dart';
import 'package:test/screens/component/body_card/body_card_nounou.dart';
import 'package:test/screens/component/body_card/body_card_pressing.dart';

class BodyCategoriesHomePage extends StatefulWidget {
  const BodyCategoriesHomePage({
    super.key,
  });

  @override
  State<BodyCategoriesHomePage> createState() => _BodyCategoriesHomePageState();
}

class _BodyCategoriesHomePageState extends State<BodyCategoriesHomePage> {
  OfficeMenageController controllerM = Get.put(OfficeMenageController());
  OfficePressingController controllerP = Get.put(OfficePressingController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: size.height * 0.80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
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
            const BodyCardMenageAll(),
            if (controllerP.cartPressing.isEmpty)
              const Padding(
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
            if (controllerP.cartPressing.isEmpty) const BodyCardPressingAll(),
            const Padding(
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
            const BodyCardNounouAll(),
            if (controllerP.cartPressing.isNotEmpty)
              const SizedBox(
                height: 230,
              )
          ],
        ),
      ),
    );
  }
}
