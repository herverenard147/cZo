import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/models/offre/package.dart';

class PackageBuilder extends StatefulWidget {
  const PackageBuilder({super.key});

  @override
  State<PackageBuilder> createState() => _PackageBuilderState();
}

class _PackageBuilderState extends State<PackageBuilder> {
  var currentPage = 0.0;
  double _scaleFactor = 0.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
        print("current page is $currentPage");
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  PageController pageController = PageController(
    viewportFraction: 0.85,
  );
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.3,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, index) => _buiderPackage(index),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //DostIndicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => Container(
              margin: const EdgeInsets.only(right: 5),
              height: 6,
              width: currentPage == index ? 20 : 6,
              decoration: BoxDecoration(
                color: currentPage == index ? TColor.kprimary : Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buiderPackage(int index) {
    final Package package;
    final Size size = MediaQuery.of(context).size;
    final double height = size.height * 0.2;
    Matrix4 matrix4 = new Matrix4.identity();
    if (index == currentPage.floor()) {
      var curScale = 1 - (currentPage - index) * (1 - _scaleFactor);
      var curTrans = height * (1 - curScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else if (index == currentPage.floor() + 1) {
      var curScale =
          _scaleFactor + (currentPage - index + 1) * (1 - _scaleFactor);
      var curTrans = height * (1 - curScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else if (index == currentPage.floor() - 1) {
      var curScale = 1 - (currentPage - index) * (1 - _scaleFactor);
      var curTrans = height * (1 - curScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else {
      var curScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2,
            margin: EdgeInsets.only(
              left: size.width * 0.01,
              right: size.width * 0.01,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.15,
              margin: EdgeInsets.only(
                left: size.width * 0.1,
                right: size.width * 0.1,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  top: size.width * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "C'ZO Menage",
                      style: TextStyle(
                          color: TColor.subtitle,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: TColor.font,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("4.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text("data"),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
