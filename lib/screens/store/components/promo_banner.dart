import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({
     required this.title1, required this.title2,
  });
  final String title1;
  final String title2;

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
        vertical: size.width * 0.029,
      ),
      width: double.infinity,
      // height: size.height * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF4A3298)),
      child: Text.rich(
        TextSpan(
          text: widget.title1,
          style: const TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: widget.title2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
