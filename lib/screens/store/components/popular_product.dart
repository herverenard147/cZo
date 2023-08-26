import 'package:flutter/material.dart';
import 'package:test/models/produit/produit.dart';
import 'package:test/screens/component/produit_card.dart';
import 'package:test/screens/store/components/section_title.dart';


class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SectionTitle(
          title: "Produits Populaire",
          plus: "Voir Plus",
          press: () {},
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              ...List.generate(
                produits.length,
                (index) => ProductCard(
                  produit: produits[index],
                ),
              ),
              SizedBox(
                width: size.width * 0.04,
              )
            ],
          ),
        ),
      ],
    );
  }
}
