import 'package:flutter/material.dart';
import 'package:test/models/offre/placement/fille.dart';

enum FilleType {
  popular,
  newArrivals,
  cart,
}

class MockData {
  static final _filles = [
    Fille(
      id: 1,
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

  static final _popular = [1];

  static final _newArrivals = [1];

  static final _cart = [1];

  static List<int> _getFilleIds(FilleType filleType) {
    switch (filleType) {
      case FilleType.popular:
        return _popular;
      case FilleType.newArrivals:
        return _newArrivals;
      case FilleType.cart:
        return _cart;
    }
  }

  static Fille getFilleById(int filleId) => _filles.firstWhere(
        (fille) => fille.id == filleId,
      );

  static List<Fille> getFilles(FilleType filleType) {
    final filleIds = _getFilleIds(filleType);
    return filleIds.map((id) => getFilleById(id)).toList();
  }
}
