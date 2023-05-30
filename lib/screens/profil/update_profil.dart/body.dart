import 'package:flutter/material.dart';
import 'package:test/auth/components/buttom_text_field.dart';
import 'package:test/constants/color.dart';
import 'package:test/models/user.dart';

class BodyUpdate extends StatelessWidget {
  const BodyUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    final txtCommuneController = TextEditingController();

    final txtUserNameController = TextEditingController();
    final txtEmailController = TextEditingController();
    final txtNameController = TextEditingController();
    final txtSecondNameController = TextEditingController();
    final txtTelephoneController = TextEditingController();
    final txtVilleController = TextEditingController();

    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                // bottom: 0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: TColor.font,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.12,
                width: size.width * 0.22,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(users[0].photoPath),
                ),
              ),
            ],
          ),
          // Form(
          //   child: TextFormField(
          //     decoration: InputDecoration(),
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
            child: Form(
              child: Column(
                children: [
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
                  const SizedBox(
                    height: 15,
                  ),
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {},
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
                            'Confirmer',
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
        ],
      ),
    );
  }
}
