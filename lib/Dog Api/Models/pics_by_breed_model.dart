// To parse this JSON data, do
//
//     final picsByBreedList = picsByBreedListFromJson(jsonString);

import 'dart:convert';

PicsByBreedList picsByBreedListFromJson(String str) =>
    PicsByBreedList.fromJson(json.decode(str));

String picsByBreedListToJson(PicsByBreedList data) =>
    json.encode(data.toJson());

class PicsByBreedList {
  PicsByBreedList({
    this.message,
    this.status,
  });

  final List<String>? message;
  final String? status;

  factory PicsByBreedList.fromJson(Map<String, dynamic> json) =>
      PicsByBreedList(
        message: List<String>.from(json["message"].map((x) => x)),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": List<dynamic>.from(message!.map((x) => x)),
        "status": status,
      };
}
