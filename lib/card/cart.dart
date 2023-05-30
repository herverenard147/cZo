// import 'package:flutter/material.dart';
// import 'package:test/card/CartProvider.dart';

// class CardPage extends StatefulWidget {
//   const CardPage({super.key});

//   @override
//   State<CardPage> createState() => _CardPageState();
// }

// class _CardPageState extends State<CardPage> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//  centerTitle: true,
//  title: const Text('Product List'),
//  actions: [
//    Badge(
//      badgeContent: Consumer<CartProvider>(
//        builder: (context, value, child) {
//          return Text(
//            value.getCounter().toString(),
//            style: const TextStyle(
//                color: Colors.white, fontWeight: FontWeight.bold),
//          );
//        },
//      ),
//      position: const BadgePosition(start: 30, bottom: 30),
//      child: IconButton(
//        onPressed: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => const CartScreen()));
//        },
//        icon: const Icon(Icons.shopping_cart),
//      ),
//    ),
//    const SizedBox(
//      width: 20.0,
//    ),
//  ],
// ),
// body: ListView.builder(
//    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
//    shrinkWrap: true,
//    itemCount: products.length,
//    itemBuilder: (context, index) {
//      return Card(
//        color: Colors.blueGrey.shade200,
//        elevation: 5.0,
//        child: Padding(
//          padding: const EdgeInsets.all(4.0),
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            mainAxisSize: MainAxisSize.max,
//            children: [
//              Image(
//                height: 80,
//                width: 80,
//                image: AssetImage(products[index].image.toString()),
//              ),
//              SizedBox(
//                width: 130,
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    const SizedBox(
//                      height: 5.0,
//                    ),
//                    RichText(
//                      overflow: TextOverflow.ellipsis,
//                      maxLines: 1,
//                      text: TextSpan(
//                          text: 'Name: ',
//                          style: TextStyle(
//                              color: Colors.blueGrey.shade800,
//                              fontSize: 16.0),
//                          children: [
//                            TextSpan(
//                                text:
//                                    '${products[index].name.toString()}\n',
//                                style: const TextStyle(
//                                    fontWeight: FontWeight.bold)),
//                          ]),
//                    ),
//                    RichText(
//                      maxLines: 1,
//                      text: TextSpan(
//                          text: 'Unit: ',
//                          style: TextStyle(
//                              color: Colors.blueGrey.shade800,
//                              fontSize: 16.0),
//                          children: [
//                            TextSpan(
//                                text:
//                                    '${products[index].unit.toString()}\n',
//                                style: const TextStyle(
//                                    fontWeight: FontWeight.bold)),
//                          ]),
//                    ),
//                    RichText(
//                      maxLines: 1,
//                      text: TextSpan(
//                          text: 'Price: ' r"$",
//                          style: TextStyle(
//                              color: Colors.blueGrey.shade800,
//                              fontSize: 16.0),
//                          children: [
//                            TextSpan(
//                                text:
//                                    '${products[index].price.toString()}\n',
//                                style: const TextStyle(
//                                    fontWeight: FontWeight.bold)),
//                          ]),
//                    ),
//                  ],
//                ),
//              ),
//              ElevatedButton(
//                  style: ElevatedButton.styleFrom(
//                      primary: Colors.blueGrey.shade900),
//                  onPressed: () {
//                    saveData(index);
//                  },
//                  child: const Text('Add to Cart')),
//            ],
//          ),
//        ),
//      );
//    }),
//     );
//   }
// }