// To parse this JSON data, do
//
//     final modelJson1 = modelJson1FromJson(jsonString);

import 'dart:convert';

ModelJson1 modelJson1FromJson(String str) =>
    ModelJson1.fromJson(json.decode(str));

String modelJson1ToJson(ModelJson1 data) => json.encode(data.toJson());

class ModelJson1 {
  ModelJson1({
    required this.data,
  });

  List<Datum> data;

  factory ModelJson1.fromJson(Map<String, dynamic> json) => ModelJson1(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.judul,
    required this.genre,
    required this.img,
    required this.rate,
  });

  String judul;
  String genre;
  String img;
  double rate;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        judul: json["judul"],
        genre: json["genre"],
        img: json["img"],
        rate: json["rate"],
      );

  Map<String, dynamic> toJson() => {
        "judul": judul,
        "genre": genre,
        "img": img,
        "rate": rate,
      };
}
