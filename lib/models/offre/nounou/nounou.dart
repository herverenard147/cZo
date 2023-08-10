import 'package:flutter/material.dart';

class Nounou {
  final String title, date, image;
  final int phone, id, years, price;
  final Color color;
  int quantity;
  bool isFavorite;
  Nounou({
    required this.id,
    this.quantity = 1,
    required this.isFavorite,
    required this.title,
    required this.price,
    required this.date,
    required this.phone,
    required this.years,
    required this.color,
    required this.image,
  });
}

List<Nounou> nounous = [
  Nounou(
    id: 1,
    title: 'chap',
    quantity: 1,
    isFavorite: false,
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 4, 14, 32),
    image: 'images/logo.png',
  ),
  Nounou(
    id: 2,
    title: 'chep',
    quantity: 1,
    isFavorite: false,
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 175, 126, 19),
    image: 'images/logo.png',
  ),
  Nounou(
    id: 3,
    title: 'Namm',
    quantity: 1,
    isFavorite: false,
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 170, 183, 209),
    image: 'images/logo.png',
  ),
  Nounou(
    id: 4,
    title: 'BJHj',
    quantity: 1,
    isFavorite: false,
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 21, 117, 18),
    image: 'images/logo.png',
  ),
];
