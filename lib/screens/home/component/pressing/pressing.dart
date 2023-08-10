import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controller/office_Pressing_controller.dart';
import 'package:test/screens/home/component/pressing/components/body_pressing.dart';

class PressingPage extends StatefulWidget {
  const PressingPage({super.key});

  @override
  State<PressingPage> createState() => _PressingPageState();
}

class _PressingPageState extends State<PressingPage> {
  OfficePressingController controller = Get.put(OfficePressingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.cartPressing.isNotEmpty
          ? const BodyPressingPage()
          : const Center(
              child: Text("Pas encore disponible"),
            ),
    );
  }
}
