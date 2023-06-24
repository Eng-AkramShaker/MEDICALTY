// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

RegisterInsuranceModel registerInsuranceModelFromJson(String str) =>
    RegisterInsuranceModel.fromJson(json.decode(str));

String registerCenterModelToJson(RegisterInsuranceModel data) =>
    json.encode(data.toJson());

class RegisterInsuranceModel {
  String? name;
  String? description;
  String? email;
  String? formal_email;
  String? phone;
  String? formal_phone;
  String? website;
  String? address1;
  String? country;
  String? address;
  String? state;
  String? province;
  String? zipCode;
  String? facebook;
  String? instagram;
  String? twitter;
  String? snapchat;
  String? youtube;
  RegisterInsuranceModel({
    this.name,
    this.description,
    this.email,
    this.formal_email,
    this.phone,
    this.formal_phone,
    this.website,
    this.address1,
    this.country,
    this.address,
    this.state,
    this.province,
    this.zipCode,
    this.facebook,
    this.instagram,
    this.twitter,
    this.snapchat,
    this.youtube,
  });

  factory RegisterInsuranceModel.fromJson(Map<dynamic, dynamic> json) =>
      RegisterInsuranceModel(
        name: json["name"],
        description: json["description"],
        email: json["email"],
        formal_email: json["formal_email"],
        phone: json["phone"],
        formal_phone: json["formal_phone"],
        website: json["website"],
        address1: json["address1"],
        country: json["country"],
        address: json["address"],
        state: json["state"],
        province: json["province"],
        zipCode: json["zip_code"],
        facebook: json["facebook"],
        instagram: json["instagram"],
        twitter: json["twitter"],
        snapchat: json["snapchat"],
        youtube: json["youtube"],
      );

  Map<dynamic, dynamic> toJson() => {
        "name": name,
        " description": description,
        "email": email,
        "formal_email": formal_email,
        "phone": phone,
        "formal_phone": formal_phone,
        "website": website,
        "address1": phone,
        "country": country,
        "address": address,
        "state": state,
        "province": province,
        "zip_code": zipCode,
        "facebook": facebook,
        "instagram": instagram,
        "twitter": twitter,
        "snapchat": snapchat,
        "youtube": youtube,
      };
}
