import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
         this.id,
       this.name,
         this.age,
        this.phoneNum,
         this.nationality,
         this.geneticHistory,
         this.testResult,
         this.image,
    });

    int ?id;
    String? name;
    int ?age;
    String? phoneNum;
    String ?nationality;
    String ?geneticHistory;
    String? testResult;
    String? image;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        phoneNum: json["phone_num"],
        nationality: json["nationality"],
        geneticHistory: json["genetic_history"],
        testResult: json["test_result"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "phone_num": phoneNum,
        "nationality": nationality,
        "genetic_history": geneticHistory,
        "test_result": testResult,
        "image": image,
    };
}
// class User {
//   User({
//     this.id,
//     this.name,
//     this.username,
//     this.email,
//     this.address,
//     this.phone,
//     this.website,
//     this.company,
//   });

//   int? id;
//   String? name;
//   String? username;
//   String? email;
//   Address? address;
//   String? phone;
//   String? website;
//   Company? company;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         name: json["name"],
//         username: json["username"],
//         email: json["email"],
//         address: Address.fromJson(json["address"]),
//         phone: json["phone"],
//         website: json["website"],
//         company: Company.fromJson(json["company"]),
//       );
// }

// class Address {
//   Address({
//     this.street,
//     this.suite,
//     this.city,
//     this.zipcode,
//     this.geo,
//   });

//   String? street;
//   String? suite;
//   String? city;
//   String? zipcode;
//   Geo? geo;

//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//         street: json["street"],
//         suite: json["suite"],
//         city: json["city"],
//         zipcode: json["zipcode"],
//         geo: Geo.fromJson(json["geo"]),
//       );
// }

// class Geo {
//   Geo({
//     this.lat,
//     this.lng,
//   });

//   String? lat;
//   String? lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//       );
// }

// class Company {
//   Company({
//     this.name,
//     this.catchPhrase,
//     this.bs,
//   });

//   String? name;
//   String? catchPhrase;
//   String? bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//       );
// }
