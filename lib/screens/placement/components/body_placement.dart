import 'package:flutter/material.dart';
import 'package:test/models/offre/placement/fille.dart';
import 'package:test/screens/component/search_box.dart';
import 'package:test/screens/placement/components/item_card_placemt.dart';

class BodyPlacement extends StatelessWidget {
  const BodyPlacement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: size.height * 0.90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 3.8,
                        ),
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: filles.length,
                        itemBuilder: (context, index) => ItemCardPlacement(
                          fille: filles[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
