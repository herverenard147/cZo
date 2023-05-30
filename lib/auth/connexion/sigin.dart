// ignore_for_file: non_constant_identifier_names, body_might_complete_normally_catch_error

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test/auth/components/buttom_text_field.dart';
import 'package:test/constants/color.dart';
import 'package:test/models/user.dart';
import 'package:test/screens/home/home.dart';

class SignInPage extends StatefulWidget {
  static String routeNames = '/signIn';

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final txtUserNameController = TextEditingController();
  final txtEmailController = TextEditingController();
  final txtPasswordController = TextEditingController();
  final txtNameController = TextEditingController();
  final txtSecondNameController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final txtTelephoneController = TextEditingController();
  final txtVilleController = TextEditingController();
  final txtCommuneController = TextEditingController();

  String? errorMessage;
  final _auth = FirebaseAuth.instance;
  bool isStay = false;
  bool _obscureTextPa = true;
  bool _obscureTextCo = true;
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
                  'Creez un Compte',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtomTextField(
                  controller: txtNameController,
                  hintext: 'Nom',
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
                    if (value!.isEmpty) {
                      return 'Le Nom ne peut pas être vide';
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez un nom (Min. 2 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtNameController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtomTextField(
                  controller: txtUserNameController,
                  hintext: "Nom d'utilisateur",
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
                    if (value!.isEmpty) {
                      return "Le Nom d'utilisateur ne peut pas être vide";
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez un nom d'utilisateur (Min. 2 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtUserNameController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtomTextField(
                  controller: txtSecondNameController,
                  hintext: 'Prenom ',
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
                    if (value!.isEmpty) {
                      return 'Le prénom ne peut pas être vide';
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez un prénom (Min. 2 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtSecondNameController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtomTextField(
                  controller: txtEmailController,
                  hintext: 'Adresse Email',
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
                    txtEmailController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                BottomTextFieldPassword(),
                const SizedBox(
                  height: 15,
                ),
                BottomTextFieldConfirmPassword(),
                const SizedBox(
                  height: 15,
                ),
                ButtomTextField(
                  controller: txtTelephoneController,
                  hintext: 'Téléphone',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    RegExp regex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
                    if (value!.isEmpty) {
                      return 'Le Téléphone ne peut pas être vide';
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez un Numéros (Min. 10 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtTelephoneController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtomTextField(
                  controller: txtVilleController,
                  hintext: 'Ville',
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
                    if (value!.isEmpty) {
                      return 'Le Ville ne peut pas être vide';
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez une Ville (Min. 2 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtVilleController.text = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtomTextField(
                  controller: txtCommuneController,
                  hintext: 'Comune',
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
                    if (value!.isEmpty) {
                      return 'La Comune ne peut pas être vide';
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez une Comune (Min. 2 charactere)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtCommuneController.text = value!;
                  },
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      signIn(
                          txtEmailController.text, txtPasswordController.text);
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container BottomTextFieldPassword() {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textbox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        autofocus: false,
        textInputAction: TextInputAction.next,
        obscureText: _obscureTextPa,
        controller: txtPasswordController,
        validator: (value) {
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Entrez un mot de passe");
          }
          if (!regex.hasMatch(value)) {
            return ("Entez un mot de passe valide(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          txtPasswordController.text = value!;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          suffixIcon: IconButton(
            icon: _obscureTextPa
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
                  _obscureTextPa = !_obscureTextPa;
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
    );
  }

  Container BottomTextFieldConfirmPassword() {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textbox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        obscureText: _obscureTextCo,
        textInputAction: TextInputAction.next,
        controller: confirmPasswordController,
        validator: (value) {
          if (confirmPasswordController.text != txtPasswordController.text) {
            return 'Invalide';
          } else {
            return null;
          }
        },
        onSaved: (value) {
          confirmPasswordController.text = value!;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          suffixIcon: IconButton(
            icon: _obscureTextCo
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
                  _obscureTextCo = !_obscureTextCo;
                },
              );
            },
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: 'Confirmer mot de passe',
          labelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(
                email: email.toString(), password: password.toString())
            .then((value) => {postDetailsToFirestore()})
            .catchError(
          (e) {
            Fluttertoast.showToast(msg: e!.message);
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

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.name = txtNameController.text;
    userModel.secondName = txtSecondNameController.text;
    userModel.telephone = txtTelephoneController.text;
    userModel.commune = txtCommuneController.text;
    userModel.ville = txtVilleController.text;
    userModel.password = txtPasswordController.text;
    userModel.username = txtUserNameController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Compte creer avec succès ");
    Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
  }
}
