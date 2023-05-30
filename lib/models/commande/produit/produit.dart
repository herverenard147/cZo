import 'package:flutter/material.dart';

class Produit {
  final String title, description;
  final List<String> image;
  final List<Color> color;
  final int id;
  final double raiting, price;
  final bool isfavorite, isPopular;
  Produit({
    required this.isfavorite,
    required this.isPopular,
    required this.description,
    required this.id,
    required this.title,
    required this.price,
    // required this.date,
    required this.raiting,
    required this.color,
    required this.image,
  });
  String get priceString => '\$${price.toStringAsFixed(2)}';
  String get imagePath => 'assets/$image.png';
}

List<Produit> produits = [
  Produit(
    id: 1,
    title: 'Maxi',
    price: 2500,
    // date: 'herve@gmail.com',
    color: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
    ],
    image: [
      'assets/images/produit/1f52a4787571a71d867355b2d877214b.png',
      'assets/images/produit/maxi.jpg',
      'assets/images/produit/Mutandis-Detergent.jpg',
    ],
    description: description,
    isPopular: true,
    isfavorite: true,
    raiting: 4.8,
  ),
  Produit(
    id: 2,
    title: 'Maxi',
    price: 2500,
    // date: 'herve@gmail.com',
    color: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
    ],
    image: [
      'assets/images/produit/1f52a4787571a71d867355b2d877214b.png',
      'assets/images/produit/maxi.jpg',
      'assets/images/produit/Mutandis-Detergent.jpg',
    ],
    description: description,
    isPopular: true,
    isfavorite: true,
    raiting: 0,
  ),
  Produit(
    id: 3,
    title: 'Maxi',
    price: 2500,
    // date: 'herve@gmail.com',
    color: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
    ],
    image: [
      'assets/images/produit/1f52a4787571a71d867355b2d877214b.png',
      'assets/images/produit/maxi.jpg',
      'assets/images/produit/Mutandis-Detergent.jpg',
    ],
    description: description,
    isPopular: true,
    isfavorite: false,
    raiting: 0,
  ),
];
const String description = "Produit d'entretien de maison toute categorie";
