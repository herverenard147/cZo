import 'package:flutter/material.dart';
import 'package:test/screens/store/components/categories.dart';
import 'package:test/screens/store/components/promo_banner.dart';
import 'package:test/screens/store/components/search_store.dart';
import 'package:test/screens/store/components/special_offer.dart';
import 'package:test/screens/store/components/popular_product.dart';

class BodyStore extends StatelessWidget {
  // final ValueChanged<String> onChanged;
  const BodyStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              SearchBoxStore(),
              PromoBanner(
                title1: "Semaine Généreuse\n",
                title2: "Beneficier d'un code Promo de 20%",
              ),
              SizedBox(
                height: 20,
              ),
              Categories(),
              SpecialOffer(),
              SizedBox(
                height: 20,
              ),
              PopularProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
