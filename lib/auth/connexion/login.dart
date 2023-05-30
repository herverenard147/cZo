import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test/auth/components/buttom_text_field.dart';
import 'package:test/auth/connexion/sigin.dart';
import 'package:test/auth/recuperation/password_forgot.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String? errorMessage;

  bool isStay = false;
  bool _obscureText = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: -0,
        backgroundColor: Colors.white10,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Se Connectez',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                ButtomTextField(
                  controller: emailController,
                  hintext: 'Adresse Email / Username',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{3,4}$');
                    if (value!.isEmpty) {
                      return 'L Adresse Email ne peut pas être vide';
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez une Adresse Email (Min. 15 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    emailController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: TColor.textbox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    obscureText: _obscureText,
                    textInputAction: TextInputAction.done,
                    controller: passwordController,
                    validator: (value) {
                      RegExp regex = RegExp(r'^.{6,}$');
                      if (value!.isEmpty) {
                        return ("Entrez un mot de passe");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Entez un mot de passe valide(Min. 6 Character)");
                      }
                      return null;
                    },
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      suffixIcon: IconButton(
                        icon: _obscureText
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              )
                            : const Icon(
                                Icons.visibility,
                              ),
                        onPressed: () {
                          setState(
                            () {
                              _obscureText = !_obscureText;
                            },
                          );
                        },
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: 'Mot de passe',
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isStay = !isStay;
                        });
                      },
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isStay = !isStay;
                              });
                            },
                            icon: Icon(
                              isStay
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              color: isStay
                                  ? TColor.primary
                                  : TColor.subtitle.withOpacity(0.3),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isStay = !isStay;
                              });
                            },
                            child: Text(
                              'Restez connecter',
                              style: TextStyle(
                                color: TColor.subtitle.withOpacity(0.3),
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, PasswordForgot.routeNames);
                      },
                      child: Text(
                        'Mot de passe oublié',
                        style: TextStyle(
                          color: TColor.text.withOpacity(0.3),
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      logIn(emailController.text, passwordController.text);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: TColor.primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Connexion',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Vous n'avez pas de compte ?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignInPage.routeNames);
                      },
                      child: const Text(
                        "Creer un compte",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void logIn(String email, String password) async {
    if (formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then(
              (uid) => {
                Fluttertoast.showToast(msg: "Connexion Réussite"),
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
              },
            );
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Votre adresse e-mail est incorrect.";

            break;
          case "wrong-password":
            errorMessage = "Votre mot de passe est erroné.";
            break;
          case "user-not-found":
            errorMessage = "L'utilisateur avec cet email n'existe pas.";
            break;
          case "user-disabled":
            errorMessage = "L'utilisateur avec cet e-mail a été désactivé.";
            break;
          case "too-many-requests":
            errorMessage = "Trop de demandes";
            break;
          case "operation-not-allowed":
            errorMessage =
                "La connexion avec un e-mail et un mot de passe n'est pas activée.";
            break;
          default:
            errorMessage = "Une erreur indéfinie s'est produite.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}
