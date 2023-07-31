import 'package:flutter/material.dart';

class Menage {
  final String title, date, image, description;
  final int phone, id, years, price;
  final Color color;
  Menage({
    required this.id,
    required this.title,
    required this.price,
    required this.date,
    required this.phone,
    required this.years,
    required this.color,
    required this.image,
    required this.description,
  });
}

List<Menage> menages = [
  Menage(
    id: 1,
    title: 'simple',
    price: 250,
    date: '5h - 6h',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 4, 14, 32),
    image: 'images/logo.png', 
    description: "Le package de nettoyage salon \"Salon Clean & Fresh\" est un ensemble complet de produits et d'outils spécialement conçus pour nettoyer et entretenir votre salon. Ce package vous permettra de garder votre salon propre, frais et accueillant, tout en offrant une ambiance agréable pour vous, votre famille et vos invités.",
  ),
  Menage(
    id: 2,
    title: 'Complet',
    price: 200,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 175, 126, 19),
    image: 'assets/images/logo.png', 
    description: '',
  ),
  Menage(
    id: 3,
    title: 'Namm',
    price: 290,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 170, 183, 209),
    image: 'assets/images/logo.png', 
    description: '',
  ),
  Menage(
    id: 4,
    title: 'BJHj',
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 21, 117, 18),
    image: 'assets/images/logo.png', 
    description: '',
  ),
];
