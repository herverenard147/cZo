import 'package:flutter/material.dart';
import 'package:test/models/offre/pressing/pressing.dart';
import 'package:test/screens/home/component/pressing/components/item_card_pressing.dart';
import 'package:test/screens/home/component/pressing/detail/detaill_pressing.dart';

class BodyCardPressing extends StatelessWidget {
  const BodyCardPressing({super.key});

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
          itemCount: pressings.length,
          itemBuilder: (context, index) => ItemCardPressing(
            pressing: pressings[index],
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DetailPagePressing(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
