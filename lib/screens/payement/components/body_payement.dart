import 'package:flutter/material.dart';
import 'package:test/models/commande/commande.dart';
import 'package:test/screens/payement/components/item_card_payement.dart';

class BodyPayement extends StatelessWidget {
  const BodyPayement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final subtotal = commandes.fold<double>(
        0, (value, commande) => (value + commande.price));
    final shipping = commandes.fold<double>(
        0, (value, commande) => (value + commande.price) / 1.2);
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: size.height * 0.60,
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
                        itemCount: commandes.length,
                        itemBuilder: (context, index) => ItemCardPayement(
                          commande: commandes[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  costLine('Subtotal', '\$${subtotal.toStringAsFixed(2)}'),
                  const SizedBox(height: 16),
                  costLine('TVA', '\$${shipping.toStringAsFixed(2)}'),
                  const Divider(
                    height: 48,
                    thickness: 1,
                    color: Color(0xFF2A3940),
                  ),
                  costLine(
                    'Total',
                    '\$${(subtotal + shipping).toStringAsFixed(2)}',
                    fontSize: 18,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 64,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(36),
                //   color: const Color(0xFF2A3940),
                // ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xFF2A3940),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 125,
                      vertical: 13,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Validé',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF9F9FC),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
