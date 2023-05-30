import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/models/commande/commande.dart';

class ItemCardPayement extends StatelessWidget {
  final Commande commande;
  const ItemCardPayement({
    super.key,
    required this.commande,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 108, right: 16),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: TColor.font,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        commande.title,
                        style: TextStyle(
                          fontSize: 16,
                          color: TColor.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        commande.priceString,
                        style: TextStyle(
                          fontSize: 16,
                          color: TColor.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 36,
                    width: 76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF9F9FC),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.minimize_rounded,
                          size: 16,
                          color: Color(0xFFF9F9FC),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF9F9FC),
                          ),
                        ),
                        Icon(
                          Icons.production_quantity_limits_rounded,
                          size: 16,
                          color: Color(0xFFF9F9FC),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              bottom: 2,
              child: Image.asset(
                commande.imagePath,
                height: 92,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget costLine(String title, String text, {double fontSize = 16}) {
  return Row(
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(),
      Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
