// To parse this JSON data, do
//
//     final breedsList = breedsListFromJson(jsonString);

import 'dart:convert';

BreedsList breedsListFromJson(String str) =>
    BreedsList.fromJson(json.decode(str));

String breedsListToJson(BreedsList data) => json.encode(data.toJson());

class BreedsList {
  BreedsList({
    this.message,
    this.status,
  });

  Map<String, List<String>>? message;
  String? status;

  factory BreedsList.fromJson(Map<String, dynamic> json) => BreedsList(
        message: Map.from(json["message"]).map((k, v) =>
            MapEntry<String, List<String>>(
                k, List<String>.from(v.map((x) => x)))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": Map.from(message!).map((k, v) =>
            MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => x)))),
        "status": status,
      };
}
