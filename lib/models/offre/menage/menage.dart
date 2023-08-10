import 'package:flutter/material.dart';

class Menage {
  final String title, date, description;
  final int phone, id, years, price;
  final Color color;
  final String image;
  int quantity;
  bool isFavorite;
  Menage({
    required this.id,
    this.quantity = 1,
    required this.title,
    required this.price,
    required this.date,
    required this.phone,
    required this.years,
    required this.color,
    required this.image,
    required this.description,
    required this.isFavorite,
  });
}

List<Menage> menages = [
  Menage(
    id: 1,
    quantity: 1,
    isFavorite: false,
    title: 'Bureau',
    price: 250,
    date: '5h - 6h',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 4, 14, 32),
    image: 'assets/images/packages/nettoyageBureau.jpg',
    description:
        "Le package de nettoyage salon \"Salon Clean & Fresh\" est un ensemble complet de produits et d'outils spécialement conçus pour nettoyer et entretenir votre salon. Ce package vous permettra de garder votre salon propre, frais et accueillant, tout en offrant une ambiance agréable pour vous, votre famille et vos invités.",
  ),
  Menage(
    id: 2,
    quantity: 1,
    title: 'Salon',
    isFavorite: false,
    price: 200,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 175, 126, 19),
    image: 'assets/images/packages/NettoyageSal.jpg',
    description: '',
  ),
  Menage(
    id: 3,
    title: 'Salle de bain',
    price: 290,
    isFavorite: false,
    date: 'herve@gmail.com',
    phone: 0909090909,
    quantity: 1,
    years: 23,
    color: const Color.fromARGB(255, 170, 183, 209),
    image: 'assets/images/packages/NettoyageSB.jpg',
    description: '',
  ),
  Menage(
    quantity: 1,
    id: 4,
    isFavorite: false,
    title: 'Chambre',
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 21, 117, 18),
    image: 'assets/images/packages/NettoyageChamb.jpg',
    description: '',
  ),
  Menage(
    id: 5,
    quantity: 1,
    isFavorite: false,
    title: 'Cuisine',
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 21, 117, 18),
    image: 'assets/images/packages/NettoyageCuis.jpg',
    description: '',
  ),
  Menage(
    id: 5,
    isFavorite: false,
    title: 'Grand Espace/ Evenement',
    quantity: 1,
    price: 2500,
    date: 'herve@gmail.com',
    phone: 0909090909,
    years: 23,
    color: const Color.fromARGB(255, 21, 117, 18),
    image: 'assets/images/packages/nettoyageM.jpg',
    description: '',
  ),
];
