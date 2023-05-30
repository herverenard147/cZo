import 'package:test/screens/store/store.dart';

import 'components/body_details.dart';
import 'package:flutter/material.dart';
import 'package:test/screens/component/bottom_bar.dart';
import 'package:test/models/offre/menage/menage.dart';

class DetailPage extends StatelessWidget {
  final Menage menage;
  const DetailPage({super.key, required this.menage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: menage.color,
      appBar: AppBar(
        backgroundColor: menage.color,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            )),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => StorePage(),
              ));
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarHome(),
      body: BodyDetail(
        menage: menage,
      ),
    );
  }
}
