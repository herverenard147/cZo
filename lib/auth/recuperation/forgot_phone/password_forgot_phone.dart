import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

class PasswordForgotPhone extends StatelessWidget {
  static String routeNames = '/forgot_password_phone';
  const PasswordForgotPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Vérification \n par sms",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            // Text(
            //   "Mot De Passe Oublié",
            //   style: TextStyle(fontWeight: FontWeight.w600),
            // ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Entrez le code reçu par message",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: TColor.subtitle,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
