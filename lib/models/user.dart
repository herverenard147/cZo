class UserModel {
  String? uid;
  String? email;
  String? name;
  String? secondName;
  String? telephone;
  String? commune;
  String? ville;
  String? photo;
  String? password;
  String? username;
  double? years;
  String? sexe;
  String? lieudenaissance;
  String? ncarteban;
  int? old;

  String get photoPath => 'assets/$photo.png';

  String get yearsString => '\$${years?.toStringAsFixed(2)}';
  String get oldString => '\$${years?.toStringAsFixed(2)}';

  UserModel({
    this.uid,
    this.email,
    this.name,
    this.secondName,
    this.telephone,
    this.commune,
    this.ville,
    this.password,
    this.username,
    this.photo,
    this.years,
    this.sexe,
    this.lieudenaissance,
    this.ncarteban,
    this.old,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      secondName: map['secondName'],
      telephone: map['telephone'],
      commune: map['commune'],
      ville: map['ville'],
      password: map['password'],
      username: map['username'],
      years: map['years'],
      sexe: map['sexe'],
      lieudenaissance: map['lieudenaissance'],
      ncarteban: map['ncarteban'],
      old: map['old'],
      photo: map['photo'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'secondName': secondName,
      'telephone': telephone,
      'commune': commune,
      'ville': ville,
      'password': password,
      'username': username,
      'years': years,
      'sexe': sexe,
      'lieudenaissance': lieudenaissance,
      'ncarteban': ncarteban,
      'photo': photo,
      'old': old,
    };
  }
}

List<UserModel> users = [
  UserModel(
    uid: "1",
    name: 'Brou',
    secondName: 'jean louis',
    email: 'herve@gmail.com',
    telephone: "0909090909",
    commune: "Marcory",
    password: "",
    username: "jean louis",
    years: 26 / 5 / 01,
    sexe: '',
    lieudenaissance: '',
    ncarteban: '',
    photo: 'logo',
    old: 10,
  )
];
