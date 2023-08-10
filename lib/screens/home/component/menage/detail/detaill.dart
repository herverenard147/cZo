import 'package:get/get.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/payement/payement.dart';
import 'package:test/screens/store/store.dart';
import 'package:test/controller/office_Menage_controller.dart';

import 'components/body_details.dart';
import 'package:flutter/material.dart';
import 'package:test/models/offre/menage/menage.dart';
import 'package:test/screens/component/bottom_bar.dart';

class DetailPage extends StatefulWidget {
  final Menage menage;
  const DetailPage({super.key, required this.menage});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: TColor.icon,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, PayementPage.routeNames);
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: TColor.icon,
            ),
          ),
          GetBuilder(
            builder: (OfficeMenageController controller) {
              return IconButton(
                icon: widget.menage.isFavorite
                    ? Icon(Icons.bookmark, color: TColor.icon)
                    : Icon(Icons.bookmark_border, color: TColor.icon),
                onPressed: () {
                  controller.isFavoriteMenage(widget.menage);
                },
              );
            },
          ),
        ],
      ),
      // bottomNavigationBar: const BottomNavigationBarHome(),
      body: BodyDetail(
        menage: widget.menage,
      ),
    );
  }
}
