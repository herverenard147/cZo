// import 'package:flutter/material.dart';
// import 'package:test/screens/home/component/menage/menage.dart';
// import 'package:test/screens/home/component/nounou/nounou.dart';
// import 'package:test/screens/home/component/pressing/pressing.dart';
// import 'package:test/screens/home/home.dart';
// import 'package:test/constants/color.dart';

// class Categories extends StatefulWidget {
//   const Categories({super.key});
//   @override
//   State<Categories> createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> {
//   List<String> categories = [
//     "Tout",
//     "Ménage",
//     "Pressing",
//     "Nounou",
//   ];
//   late var selectedIndex = CategoriesState.tout;
//   late var selectedCate = CategoriesState.tout;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//       child: SizedBox(
//         height: 25,
//         child: ListView.builder(
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index) => buidCategory(index),
//         ),
//       ),
//     );
//   }

//   Widget buidCategory(int index) {
//     return GestureDetector(
//       onTap: () {
//         if (categories[index] == selectedIndex) {
//           setState(() {
//             selectedIndex = categories[index] as CategoriesState;
//           });
//         }
//         switch (index) {
//           case 0:
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => HomePage(),
//               ),
//             );
//             break;
//           case 1:
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const MenagePage(),
//               ),
//             );
//             break;
//           case 2:
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const PressingPage(),
//               ),
//             );
//             break;
//           case 3:
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const NounouPage(),
//               ),
//             );
//             break;
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               categories[index],
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: selectedIndex == categories[index]
//                     ? TColor.textColor
//                     : TColor.textLightColor,
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: defaultPadding / 4),
//               height: 2,
//               width: 30,
//               color: selectedIndex == categories[index]
//                   ? TColor.font
//                   : Colors.transparent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// enum CategoriesState { tout, menage, pressing, nounou }