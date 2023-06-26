// To parse this JSON data, do
//
//     final centerBody = centerBodyFromJson(jsonString);

import 'dart:convert';

CenterBody centerBodyFromJson(String str) => CenterBody.fromJson(json.decode(str));

String centerBodyToJson(CenterBody data) => json.encode(data.toJson());

class CenterBody {
    String? name;
    String? username;
    String? email;
    String? password;
    String? country;
    String? subscriptionType;
    String? subscriptionPeriod;
    String? formalEmail;
    String? phone;
    String? formalPhone;
    String? website;
    String? address1;
    String? address2;
    String? state;
    String? province;
    String? zipCode;
    String? facebook;
    String? instagram;
    String? twitter;
    String? snapchat;
    String? youtube;

    CenterBody({
         this.name,
         this.username,
         this.email,
         this.password,
         this.country,
         this.subscriptionType,
         this.subscriptionPeriod,
         this.formalEmail,
         this.phone,
         this.formalPhone,
         this.website,
         this.address1,
         this.address2,
         this.state,
         this.province,
         this.zipCode,
         this.facebook,
         this.instagram,
         this.twitter,
         this.snapchat,
         this.youtube,
    });

    factory CenterBody.fromJson(Map<String, dynamic> json) => CenterBody(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        country: json["country"],
        subscriptionType: json["subscription_type"],
        subscriptionPeriod: json["subscription_period"],
        formalEmail: json["formal_email"],
        phone: json["phone"],
        formalPhone: json["formal_phone"],
        website: json["website"],
        address1: json["address1"],
        address2: json["address2"],
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
        "username": username,
        "email": email,
        "password": password,
        "country": country,
        "subscription_type": subscriptionType,
        "subscription_period": subscriptionPeriod,
        "formal_email": formalEmail,
        "phone": phone,
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
