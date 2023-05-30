import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

class IconButtomBar extends StatelessWidget {
  const IconButtomBar({
    super.key,
    required this.size,
    required this.icon,
    required this.press,
    this.numItems = 0,
  });

  final Size size;
  final IconData icon;
  final int numItems;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          if (numItems != 0)
            Positioned(
              top: -6,
              right: 10,
              // left: 40,
              // bottom: 0,
              child: Container(
                height: size.height * 0.03,
                width: size.width * 0.04,
                decoration: const BoxDecoration(
                  color: Color(0xffFF4848),
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //   width: 1.5,
                  //   color: TColor.beige,
                  // ),
                ),
                child: Center(
                  child: Text(
                    "$numItems",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          IconButton(
            onPressed: press,
            icon: Icon(
              icon,
              size: 29,
              color: TColor.icon,
            ),
            // SvgPicture.asset("assets/icons/cart.svg"),
          ),
        ],
      ),
    );
  }
}
