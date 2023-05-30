import 'package:flutter/material.dart';

class PasswordForgot extends StatelessWidget {
  static String routeNames = '/forgot_password';
  const PasswordForgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("data"),
            Text("data"),
          ],),
      ),
    );
  }
}
