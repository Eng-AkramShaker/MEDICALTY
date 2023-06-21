// To parse this JSON data, do
//
//     final registerCenterModel = registerCenterModelFromJson(jsonString);

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

RegisterCenterModel registerCenterModelFromJson(String str) =>
    RegisterCenterModel.fromJson(json.decode(str));

String registerCenterModelToJson(RegisterCenterModel data) =>
    json.encode(data.toJson());

class RegisterCenterModel {
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
  RegisterCenterModel({
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

  factory RegisterCenterModel.fromJson(Map<dynamic, dynamic> json) =>
      RegisterCenterModel(
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
        " description":  description,
        "email": email,
        "formal_email": formal_email,

        "phone": country,
        "formal_phone": subscriptionType,
        "subscription_period": subscriptionPeriod,
        "website": formalEmail,
        "address1": phone,
        "formal_phone": formalPhone,
        
        "website": website,
        "address1": address1,
        "address2": address2,
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
