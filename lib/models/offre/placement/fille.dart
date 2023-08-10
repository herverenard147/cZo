import 'package:flutter/material.dart';

class Fille {
  final String title,
      name,
      lastname,
      photo,
      email,
      description,
      diplome,
      pieceidentity,
      lieudenaissance,
      sexe,
      nationality,
      commune,
      cnps,
      city,
      country,
      cni,
      poste,
      years;
  final int phone, id, old, price;
  final Color color;
  int quantity;
  Fille({
    required this.id,
    this.quantity = 1,
    required this.email,
    required this.sexe,
    required this.nationality,
    required this.cni,
    required this.commune,
    required this.city,
    required this.country,
    required this.cnps,
    required this.diplome,
    required this.lieudenaissance,
    required this.pieceidentity,
    required this.name,
    required this.lastname,
    required this.description,
    required this.title,
    required this.price,
    required this.years,
    required this.phone,
    required this.old,
    required this.color,
    required this.photo,
    required this.poste,
  });
  String get priceString => '\$${price.toStringAsFixed(2)}';
  String get imagePath => 'assets/$photo.png';
}

class Diplome {}

List<Fille> filles = [
  Fille(
    id: 1,
    quantity: 1,
    name: 'Oasis',
    description:
        "The Oasis chair is the perfect spot to kick back and unwind after a "
        "long day. Its supportive backrest cradles your body as you sink into "
        "the chair, providing the ultimate in comfort and support. Whether "
        "you're watching TV, reading a book, or just lounging around, this "
        "chair is the perfect place to relax and let go of all your stress. "
        "So why wait? Get ready to sink into pure bliss with our Oasis chair.",
    price: 54,
    city: '',
    cni: '',
    cnps: '',
    color: Colors.white,
    commune: '',
    country: '',
    email: '',
    diplome: '',
    lastname: '',
    lieudenaissance: '',
    nationality: '',
    old: 19,
    phone: 0556542312,
    pieceidentity: '',
    photo: 'logo',
    sexe: '',
    poste: '',
    title: '',
    years: '26/5/01',
  ),
  Fille(
    id: 2,
    quantity: 1,
    name: 'boucle',
    description:
        "The Oasis chair is the perfect spot to kick back and unwind after a "
        "long day. Its supportive backrest cradles your body as you sink into "
        "the chair, providing the ultimate in comfort and support. Whether "
        "you're watching TV, reading a book, or just lounging around, this "
        "chair is the perfect place to relax and let go of all your stress. "
        "So why wait? Get ready to sink into pure bliss with our Oasis chair.",
    price: 54,
    city: '',
    cni: '',
    cnps: '',
    color: Colors.white,
    commune: '',
    country: '',
    email: '',
    diplome: '',
    lastname: '',
    lieudenaissance: '',
    nationality: '',
    old: 19,
    phone: 0556542312,
    pieceidentity: '',
    photo: 'logo',
    sexe: '',
    poste: '',
    title: '',
    years: '26/5/01',
  ),
  Fille(
    id: 3,
    quantity: 1,
    name: 'game',
    description:
        "The Oasis chair is the perfect spot to kick back and unwind after a "
        "long day. Its supportive backrest cradles your body as you sink into "
        "the chair, providing the ultimate in comfort and support. Whether "
        "you're watching TV, reading a book, or just lounging around, this "
        "chair is the perfect place to relax and let go of all your stress. "
        "So why wait? Get ready to sink into pure bliss with our Oasis chair.",
    price: 54,
    city: '',
    cni: '',
    cnps: '',
    color: Colors.white,
    commune: '',
    country: '',
    email: '',
    diplome: '',
    lastname: '',
    lieudenaissance: '',
    nationality: '',
    old: 19,
    phone: 0556542312,
    pieceidentity: '',
    photo: 'logo',
    sexe: '',
    poste: '',
    title: '',
    years: '26/5/01',
  ),
  Fille(
    id: 4,
    quantity: 1,
    name: 'Oasis',
    description:
        "The Oasis chair is the perfect spot to kick back and unwind after a "
        "long day. Its supportive backrest cradles your body as you sink into "
        "the chair, providing the ultimate in comfort and support. Whether "
        "you're watching TV, reading a book, or just lounging around, this "
        "chair is the perfect place to relax and let go of all your stress. "
        "So why wait? Get ready to sink into pure bliss with our Oasis chair.",
    price: 54,
    city: '',
    cni: '',
    cnps: '',
    color: Colors.white,
    commune: '',
    country: '',
    email: '',
    diplome: '',
    lastname: '',
    lieudenaissance: '',
    nationality: '',
    old: 19,
    phone: 0556542312,
    pieceidentity: '',
    photo: 'logo',
    sexe: '',
    poste: '',
    title: '',
    years: '26/5/01',
  ),
  Fille(
    id: 5,
    quantity: 1,
    name: 'Oasis',
    description:
        "The Oasis chair is the perfect spot to kick back and unwind after a "
        "long day. Its supportive backrest cradles your body as you sink into "
        "the chair, providing the ultimate in comfort and support. Whether "
        "you're watching TV, reading a book, or just lounging around, this "
        "chair is the perfect place to relax and let go of all your stress. "
        "So why wait? Get ready to sink into pure bliss with our Oasis chair.",
    price: 54,
    city: '',
    cni: '',
    cnps: '',
    color: Colors.white,
    commune: '',
    country: '',
    email: '',
    diplome: '',
    lastname: '',
    lieudenaissance: '',
    nationality: '',
    old: 19,
    phone: 0556542312,
    pieceidentity: '',
    photo: 'logo',
    sexe: '',
    poste: '',
    title: '',
    years: '26/5/01',
  ),
];
