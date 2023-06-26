// To parse this JSON data, do
//
//     final createCenter = createCenterFromJson(jsonString);

import 'dart:convert';

CreateCenter createCenterFromJson(String str) => CreateCenter.fromJson(json.decode(str));

String createCenterToJson(CreateCenter data) => json.encode(data.toJson());

class CreateCenter {
    bool status;
    String errNum;
    dynamic msg;
    Center center;

    CreateCenter({
        required this.status,
        required this.errNum,
        this.msg,
        required this.center,
    });

    factory CreateCenter.fromJson(Map<String, dynamic> json) => CreateCenter(
        status: json["status"],
        errNum: json["errNum"],
        msg: json["msg"],
        center: Center.fromJson(json["Center"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "errNum": errNum,
        "msg": msg,
        "Center": center.toJson(),
    };
}

class Center {
    String logoPath;
    String name;
    String username;
    String email;
    String country;
    String subscriptionType;
    String subscriptionPeriod;
    String formalEmail;
    String phone;
    String formalPhone;
    String website;
    String address1;
    String address2;
    String state;
    String province;
    String zipCode;
    String facebook;
    String instagram;
    String twitter;
    String snapchat;
    String youtube;
    DateTime updatedAt;
    DateTime createdAt;
    int id;
    String token;

    Center({
        required this.logoPath,
        required this.name,
        required this.username,
        required this.email,
        required this.country,
        required this.subscriptionType,
        required this.subscriptionPeriod,
        required this.formalEmail,
        required this.phone,
        required this.formalPhone,
        required this.website,
        required this.address1,
        required this.address2,
        required this.state,
        required this.province,
        required this.zipCode,
        required this.facebook,
        required this.instagram,
        required this.twitter,
        required this.snapchat,
        required this.youtube,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
        required this.token,
    });

    factory Center.fromJson(Map<String, dynamic> json) => Center(
        logoPath: json["logo_path"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
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
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "logo_path": logoPath,
        "name": name,
        "username": username,
        "email": email,
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
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
        "token": token,
    };
}
