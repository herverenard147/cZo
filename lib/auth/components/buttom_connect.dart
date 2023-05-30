import 'package:flutter/material.dart';

class BottomConnect extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const BottomConnect({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xFF90EE90),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
