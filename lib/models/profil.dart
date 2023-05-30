import 'package:flutter/material.dart';

class Profil {
  final String name, prenom, email,username;
  final int phone, id, years;
  final Color color;
  Profil({
    required this.id,
    required this.name,
    required this.prenom,
    required this.email,
    required this.phone,
    required this.years,
    required this.color,
    required this.username,
  });
}

List<Profil> profils = [
  Profil(
      id: 1,
      name: 'Brou',
      prenom: 'jean louis',
      username: 'jean louis',
      email: 'herve@gmail.com',
      phone: 0909090909,
      years: 23,
      color: const Color.fromARGB(255, 4, 14, 32))
];
