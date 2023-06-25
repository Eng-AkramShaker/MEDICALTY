// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';

InsuranceModel insuranceFromJson(String str) =>
    InsuranceModel.fromJson(json.decode(str));

String insuranceToJson(InsuranceModel data) => json.encode(data.toJson());

class InsuranceModel {
  String? name;
  String? description;
  String? email;
  String? formal_email;
  String? phone;
  String? formal_phone;
  String? website;
  String? address1;
  String? country;
  String? state;
  String? province;
  String? zipCode;
  String? facebook;
  String? instagram;
  String? twitter;
  String? snapchat;
  String? youtube;

  InsuranceModel({
    this.name,
    this.description,
    this.email,
    this.formal_email,
    this.phone,
    this.formal_phone,
    this.website,
    this.address1,
    this.country,
    this.state,
    this.province,
    this.zipCode,
    this.facebook,
    this.instagram,
    this.twitter,
    this.snapchat,
    this.youtube,
  });

  factory InsuranceModel.fromJson(Map<String, dynamic> json) => InsuranceModel(
        name: json["name"],
        description: json["description"],
        email: json["email"],
        formal_email: json["formal_email"],
        phone: json["phone"],
        formal_phone: json["formal_phone"],
        website: json["website"],
        address1: json["address1"],
        country: json["country"],
        state: json["state"],
        province: json["province"],
        zipCode: json["zip_code"],
        facebook: json["facebook"],
        instagram: json["instagram"],
        twitter: json["twitter"],
        snapchat: json["snapchat"],
        youtube: json["youtube"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "email": email,
        "formal_email": formal_email,
        "phone": phone,
        "formal_phone": formal_phone,
        "website": website,
        "address1": address1,
        "country": country,
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
