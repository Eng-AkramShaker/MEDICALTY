// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'dart:convert';

laboratoryModel insuranceFromJson(String str) =>
    laboratoryModel.fromJson(json.decode(str));

String insuranceToJson(laboratoryModel data) => json.encode(data.toJson());

class laboratoryModel {
  int? id;
  String? image;
  String? name;
  String? address;
  String? phone;
  String? email;
  String? website;
  String? password;
  String? country;

  laboratoryModel({
    this.id,
    this.image,
    this.name,
    this.address,
    this.phone,
    this.email,
    this.website,
    this.password,
    this.country,
  });

  factory laboratoryModel.fromJson(Map<String, dynamic> json) =>
      laboratoryModel(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        website: json["website"],
        password: json["password"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "address": address,
        "email": email,
        "phone": phone,
        "website": website,
        "password": password,
        "country": country,
      };
}
