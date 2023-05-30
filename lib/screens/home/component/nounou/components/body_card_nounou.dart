import 'package:flutter/material.dart';
import 'package:test/models/offre/nounou/nounou.dart';
import 'package:test/screens/home/component/nounou/components/item_card_nounou.dart';
import 'package:test/screens/home/component/nounou/detail/detaill_pressing.dart';

class BodyCardNounou extends StatelessWidget {
  const BodyCardNounou({super.key});

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
          itemCount: nounous.length,
          itemBuilder: (context, index) => ItemCardNounou(
            nounou: nounous[index],
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DetailPageNounou(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
