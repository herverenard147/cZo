import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/auth/components/buttom_text_field.dart';


class PasswordForgotEmail extends StatelessWidget {
  static String routeNames = '/forgot_password_email';
  const PasswordForgotEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final txtEmailController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Vérification \n par Email",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Text(
              "Entrez  votre adresse email",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.subtitle,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ButtomTextField(
                      controller: txtEmailController,
                      hintext: 'Adresse Email',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        RegExp regex =
                            RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{3,4}$');
                        if (value!.isEmpty) {
                          return 'L Adresse Email ne peut pas être vide';
                        }
                        if (!regex.hasMatch(value)) {
                          return ("Entez une Adresse Email (Min. 15 charactere)");
                        }
                        return null;
                      },
                      onSaved: (value) {
                        txtEmailController.text = value!;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: TColor.icon,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'NEXT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
