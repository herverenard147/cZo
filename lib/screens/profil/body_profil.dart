import 'package:test/models/user.dart';
import 'package:flutter/material.dart';
import 'package:test/models/profil.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/profil/component/menu.dart';
import 'package:test/screens/profil/info_personnel/info_personnel.dart';
import 'package:test/screens/profil/update_profil.dart/update_profil.dart';

class BodyProfil extends StatefulWidget {
  @override
  State<BodyProfil> createState() => _BodyProfilState();
}

class _BodyProfilState extends State<BodyProfil> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
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
                  Icons.mode_edit_outline_outlined,
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
        const SizedBox(
          height: 10,
        ),
        Text(users[0].username == null ? "null" : profils[0].username),
        Text(users[0].username == null ? "null" : profils[0].email),
        SizedBox(
          width: size.width * 0.5,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, UpdatePage.routeNames);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: TColor.font,
              side: BorderSide.none,
              shape: const StadiumBorder(),
              elevation: 0,
            ),
            child: Text(
              "Modifiez votre profil",
              style: TextStyle(color: TColor.icon),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        ProfilMenu(
          icon: Icons.settings,
          title: "Parametres",
          press: () {},
        ),
        ProfilMenu(
          icon: Icons.settings,
          title: "Compte",
          press: () {},
        ),
        ProfilMenu(
          icon: Icons.wallet_outlined,
          title: "Dépot",
          press: () {},
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        ProfilMenu(
          icon: Icons.person_2,
          title: "Information Personnel",
          press: () {
            Navigator.pushNamed(context, InfoPersonnelPage.routeNames);
          },
        ),
        ProfilMenu(
          icon: Icons.logout_outlined,
          title: "Deconnexio",
          press: () {},
          isactivate: false,
        ),
      ],
    );
  }
}
