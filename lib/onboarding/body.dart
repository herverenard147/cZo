// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/constants/size_conf.dart';
import 'package:test/onboarding/component/default_button.dart';
import 'package:test/onboarding/component/onboarding_content.dart';
import 'package:test/onboarding/model/onboarding.dart';
import 'package:test/welcome.dart';

class BodyOnboarding extends StatefulWidget {
  const BodyOnboarding({super.key});

  @override
  State<BodyOnboarding> createState() => _BodyOnboardingState();
}

class _BodyOnboardingState extends State<BodyOnboarding> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> onboarding = [
      OnboardingModel(
        "assets/workout.png",
        "Bienvenu au C'zO propriété.",
      ),
      OnboardingModel(
        "assets/right-arrow.png",
        "Nous vous Proposons un service de nettoyage professionnel et garantie",
      ),
      OnboardingModel(
        "assets/workout.png",
        "Des Nounous qualifié avec des diplomes certifiés disponible dans tous le pays ",
      ),
      OnboardingModel(
        "assets/right-arrow.png",
        "Des Placements de fille dans votre foyers ",
      ),
    ];
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                // controller: PageController(),
                physics: const BouncingScrollPhysics(),
                // reverse: true,
                itemCount: onboarding.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboarding[index].title,
                  text: onboarding[index].image,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboarding.length,
                        (index) => BuidDot(index: index),
                      ),
                    ),
                    const Spacer(),
                    currentPage < onboarding.length - 1
                        ? Text(
                            'rien',
                            style: TextStyle(color: TColor.beige),
                          )
                        : DefaultButton(
                            press: () {
                              Navigator.pushNamed(
                                context,
                                WelcomePage.routeNames,
                              );
                            },
                            text: "Continue",
                          ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container BuidDot({required int index}) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? TColor.kprimary : Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}
