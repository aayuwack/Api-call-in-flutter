class UserModel {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  String? phone;
  String? cell;
  Picture? picture;
  String? nationality;

  UserModel({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.phone,
    this.cell,
    this.picture,
    this.nationality,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      gender: json['gender'],
      name: Name.fromJson(json['name']),
      location: Location.fromJson(json['location']),
      email: json['email'],
      phone: json['phone'],
      cell: json['cell'],
      picture: Picture.fromJson(json['picture']),
      nationality: json['nat'],
    );
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}

class Location {
  String? city;
  String? state;
  String? country;

  Location({this.city, this.state, this.country});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      city: json['city'],
      state: json['state'],
      country: json['country'],
    );
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}
