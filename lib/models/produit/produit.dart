class Produit {
  final String title, description,marque,type;
  final List<String> image;
  final List<String> color;
  final int id;
  final double raiting, price;
  bool isFavorite, isPopular;
  int quantity;
  Produit( {
    this.quantity = 1,
    required this.marque,
    required this.type,
    required this.id,
    required this.isFavorite,
    required this.isPopular,
    required this.description,
    required this.title,
    required this.price,
    // required this.date,
    required this.raiting,
    required this.color,
    required this.image,
  });
  String get priceString => '\$${price.toStringAsFixed(2)}';
  String get imagePath => 'assets/$image.png';

  factory Produit.fromMap(map) {
    return Produit(
      isFavorite: map["isFavorite"],
      marque: map["marque"],
      isPopular: map["isPopular"],
      description: map["description"],
      id: map["uid"],
      title: map["title"],
      price: map["price"],
      raiting: map["raiting"],
      color: map["color"],
      image: map["image"], 
      type: map["type"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "isFavorite": isFavorite,
      "isPopular": isPopular,
      "description": description,
      "uid": id,
      "title": title,
      "price": price,
      "raiting": raiting,
      "color": color,
      "image": image,
      "marque": marque,
      "type": type,
    };
  }
}

List<Produit> produits = [
  Produit(
    id: 1,
    title: 'Maxi',
    quantity: 1,
    price: 2500,
    // date: 'herve@gmail.com',
    color: [
      "Color(0xFFF6625E)",
      "Color(0xFF836DB8)",
      "Color(0xFFDECB9C)",
    ],
    image: [
      'assets/images/produit/1f52a4787571a71d867355b2d877214b.png',
      'assets/images/produit/maxi.jpg',
      'assets/images/produit/Mutandis-Detergent.jpg',
    ],
    description: description,
    isPopular: true,
    isFavorite: true,
    raiting: 4.8, marque: 'Gucci', type: 'detergent',
  ),
  Produit(
    id: 2,
    quantity: 1,
    title: 'Maxi',
    price: 2500,
    // date: 'herve@gmail.com',
    color: [
      "Color(0xFFF6625E)",
      "Color(0xFF836DB8)",
      "Color(0xFFDECB9C)",
    ],
    image: [
      'assets/images/produit/1f52a4787571a71d867355b2d877214b.png',
      'assets/images/produit/maxi.jpg',
      'assets/images/produit/Mutandis-Detergent.jpg',
    ],
    description: description,
    isPopular: true,
    isFavorite: true,
    raiting: 0, marque: 'Louboutin', type: 'desinfectant',
  ),
  Produit(
    id: 3,
    quantity: 1,
    title: 'Maxi',
    price: 2500,
    // date: 'herve@gmail.com',
    color: [
      "Color(0xFFF6625E)",
      "Color(0xFF836DB8)",
      "Color(0xFFDECB9C)",
    ],
    image: [
      'assets/images/produit/1f52a4787571a71d867355b2d877214b.png',
      'assets/images/produit/maxi.jpg',
      'assets/images/produit/Mutandis-Detergent.jpg',
    ],
    description: description,
    isPopular: true,
    isFavorite: false,
    raiting: 0, 
    marque: 'martini',
    type: 'detergent',
  ),
];
const String description = "Produit d'entretien de maison toute categorie";
