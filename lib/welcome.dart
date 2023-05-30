import 'package:flutter/material.dart';
import 'package:test/auth/connexion/login.dart';
import 'package:test/auth/connexion/sigin.dart';
import 'package:test/constants/color.dart';
import 'package:test/animation/delayed_animation_hop.dart';
import 'package:test/animation/delayed_animation_bottom.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static String routeNames = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              TColor.font,
              const Color(0xff00FF00),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            stops: const [1.0, 0.9],
            tileMode: TileMode.clamp,
            // 90EE90
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DelayedAnimationHop(
              delay: 1500,
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 130,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child:  Text(
                      'Zoom Apk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DelayedAnimationBottom(
              delay: 2500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFF90EE90),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'S\'identifier',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            DelayedAnimationBottom(
              delay: 3500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Se connecter',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
