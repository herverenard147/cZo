import 'package:flutter/material.dart';
import 'package:test/constants/size_conf.dart';
import 'package:test/onboarding/body.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  static String routeNames = '/onboarding';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: BodyOnboarding(),
      // OnboardScreen(),
    );
  }
}
