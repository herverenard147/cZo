import 'package:flutter/material.dart';
import 'package:test/screens/home/component/nounou/components/body_nounou.dart';

class NounouPage extends StatefulWidget {
  const NounouPage({super.key});

  @override
  State<NounouPage> createState() => _NounouPageState();
}

class _NounouPageState extends State<NounouPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: HomeAppBar(context, title1: "C'",),
      // bottomNavigationBar: const BottomNavigationBarHome(),
      body: BodyNounouPage(),
    );
  }
}
