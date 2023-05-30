import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.plus,
    required this.press,
  });
  final String title, plus;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              plus,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
