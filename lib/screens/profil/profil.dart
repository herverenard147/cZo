import 'package:flutter/material.dart';
import 'package:test/screens/profil/body_profil.dart';
import 'package:test/screens/profil/component/app_bar.dart';
import 'package:test/screens/component/custom_bottom_bar.dart';

class ProfilPage extends StatefulWidget {
  static String routeNames = "/profil";

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfilAppBar(
        context,
        title1: 'Profil',
      ),
      bottomNavigationBar: const CustomBottomBar(selectedMenu: MenuState.profile,),
      body:  BodyProfil(),
    );
  }
}
