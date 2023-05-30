import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> icons = [
      Image.asset("assets/icons/icons8-nettoyage-écologique-50.png"),
      Image.asset("assets/icons/icons8-detergent-24.png"),
      Image.asset("assets/icons/icons8-cleaning-products-64.png"),
      Image.asset("assets/icons/icons8-lavage-en-machine-50.png"),
      Image.asset("assets/icons/icons8-brosse-à-chaussures-64.png"),
    ];
    List<String> title = [
      "Détergent",
      "Désinfectant",
      "Produits detartrant",
      "Protections des sols",
      "Nettoyant",
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              icons.length,
              (index) => CategoriesBox(
                icons: icons[index],
                title: title[index],
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesBox extends StatelessWidget {
  const CategoriesBox({
    super.key,
    required this.icons,
    required this.title,
    required this.press,
  });

  final Image icons;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width * 0.19,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: TColor.cardstore,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: icons,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
