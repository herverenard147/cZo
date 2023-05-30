import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/models/offre/nounou/nounou.dart';

class ItemCardNounou extends StatelessWidget {
  final Nounou nounou;
  final VoidCallback press;
  const ItemCardNounou({
    super.key,
    required this.nounou,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.2,
            width: size.width * 0.5,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding / 4,
                  ),
                  child: Text(
                    nounou.title,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Text("${nounou.price}")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
