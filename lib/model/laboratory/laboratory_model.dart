// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'dart:convert';

laboratoryModel insuranceFromJson(String str) =>
    laboratoryModel.fromJson(json.decode(str));

String insuranceToJson(laboratoryModel data) => json.encode(data.toJson());

class laboratoryModel {
  String? image;
  String? name;
  String? address;
  String? phone;
  String? email;
  String? website;
  String? password;

  laboratoryModel({
    this.image,
    this.name,
    this.address,
    this.phone,
    this.email,
    this.website,
    this.password,
  });

  factory laboratoryModel.fromJson(Map<String, dynamic> json) =>
      laboratoryModel(
        image: json["image"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        website: json["website"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "address": address,
        "email": email,
        "phone": phone,
        "website": website,
        "password": password,
      };
}
