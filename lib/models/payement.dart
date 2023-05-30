import 'package:flutter/material.dart';

class Payement {
  final String title;
  final int id;
  final Color color;
  Payement({
    required this.id,
    required this.title,
    required this.color,
  });
}

List<Payement> payements = [
  Payement(
    id: 1,
    title: 'Brou',
    color: Colors.black54,
  )
];
