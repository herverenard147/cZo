import 'package:flutter/material.dart';
import 'package:test/models/offre/menage/menage.dart';

class BodyDetail extends StatelessWidget {
  final Menage menage;
  const BodyDetail({super.key, required this.menage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  height: size.height * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      menage.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontFamily: 'Roboto-Bold'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
