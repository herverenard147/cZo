import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controller/office_Menage_controller.dart';
import 'package:test/screens/home/component/nounou/components/body_card_nounou.dart';

class NounouPage extends StatefulWidget {
  const NounouPage({super.key});

  @override
  State<NounouPage> createState() => _NounouPageState();
}

class _NounouPageState extends State<NounouPage> {
  OfficeMenageController controller = Get.put(OfficeMenageController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: controller.cartMenage.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Container(
                        height: size.height * 0.80,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            BodyCardNounou(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const Center(
              child: Text("Pas encore disponible"),
            ),
    );
  }
}
