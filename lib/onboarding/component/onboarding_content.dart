
import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/constants/size_conf.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.text,
    required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "C'",
                // title1,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(66),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "zO",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(66),
                  fontWeight: FontWeight.bold,
                  color: TColor.text,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: TColor.subtitle,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(image),
      ],
    );
  }
}

