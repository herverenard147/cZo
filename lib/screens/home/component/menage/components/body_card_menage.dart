import 'package:flutter/material.dart';
import 'package:test/models/offre/menage/menage.dart';
import 'package:test/screens/home/component/menage/components/item_card_menage.dart';
import 'package:test/screens/home/component/menage/detail/detaill.dart';

class BodyCardMenage extends StatelessWidget {
  const BodyCardMenage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6,
            childAspectRatio: 0.8,
            mainAxisSpacing: 3,
          ),
          scrollDirection: Axis.vertical,
          itemCount: menages.length,
          itemBuilder: (context, index) => ItemCardMenage(
            menage: menages[index],
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                  menage: menages[index],

                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
