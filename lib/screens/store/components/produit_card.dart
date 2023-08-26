import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/models/produit/produit.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    this.aspectRetion = 1.02,
    super.key,
    required this.produit,
  });
  final double aspectRetion;
  final Produit produit;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: size.width * 0.3,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                decoration: BoxDecoration(
                  color: TColor.cardstore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(produit.image[0]),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              produit.title,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  produit.priceString,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: TColor.textColor),
                ),
                InkWell(
                  onTap: () {
                    print("tap");
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    width: size.width * 0.05,
                    height: size.height * 0.03,
                    decoration: const BoxDecoration(
                      // color: produit.isfavorite
                      //     ? TColor.kprimary
                      //     // .withOpacity(0.15)
                      //     : TColor.ksecondary,
                      // .withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/icons/icons8-heart-32.png",
                      color: produit.isFavorite
                          ? const Color(0xFFFF4848)
                          : const Color(0xffDBDEE4),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
