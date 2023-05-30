import 'package:flutter/material.dart';
import 'package:test/screens/profil/update_profil.dart/body.dart';
import 'package:test/screens/profil/update_profil.dart/component/app_bar.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});
  static String routeNames = "/update";

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: UpdateAppBar(
        context,
        title1: 'Modifier votre profil',
      ),
      body: const BodyUpdate(),
    );
  }
}
