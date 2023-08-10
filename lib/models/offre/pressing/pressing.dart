import 'package:flutter/material.dart';

class Pressing {
  final String title, date, image;
  final int phone, id, years, price;
  final Color color;
  int quantity;
  bool isFavorite;
  Pressing({
    required this.id,
    this.quantity = 1,
    required this.title,
    required this.price,
    required this.date,
    required this.phone,
    required this.years,
    required this.color,
    required this.image,
    required this.isFavorite,
  });
}

List<Pressing> pressings = [
  Pressing(
    id: 1,
    quantity: 1,
    isFavorite: false,
    title: 'simple',
    price: 500,
    date: '5h - 6h',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 4, 14, 32),
    image: 'images/logo.png',
  ),
  Pressing(
    id: 2,
    quantity: 1,
    isFavorite: false,
    title: 'Complet',
    price: 298,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 175, 126, 19),
    image: 'images/logo.png',
  ),
  Pressing(
    id: 3,
    quantity: 1,
    isFavorite: false,
    title: 'Namm',
    price: 399,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 170, 183, 209),
    image: 'images/logo.png',
  ),
  Pressing(
    id: 4,
    quantity: 1,
    isFavorite: false,
    title: 'BJHj',
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 21, 117, 18),
    image: 'images/logo.png',
  ),
];
