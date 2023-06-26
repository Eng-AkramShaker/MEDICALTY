class PharmacyRegisterModel{
  String? name;
  String? username;
  String? email;
  String? password;
  String? work_email;
  String? phone;
  String? work_phone;
  String? website;
  String? address;
  String? country;
  String? state;
  String? province;
  String? zipCod;
  String? facebook;
  String? instagram;
  String? twitter;
  String? snapchat;
  String? youtube;
  String? status;
  String? msg;

  PharmacyRegisterModel({
    this.name,
    this.username,
    this.email,
    this.password,
    this.work_email,
    this.phone,
    this.work_phone,
    this.website,
    this.address,
    this.country,
    this.state,
    this.province,
    this.zipCod,
    this.facebook,
    this.instagram,
    this.twitter,
    this.snapchat,
    this.youtube,
    this.status,
    this.msg,
  });

  factory PharmacyRegisterModel.fromJson(Map<dynamic, dynamic> json) {
    return PharmacyRegisterModel(
      name: json["name"],
      username: json["username"],
      email: json["email"],
      password: json["password"],
      work_email: json["work_email"],
      phone: json["phone"],
      work_phone: json["work_phone"],
      website: json["website"],
      address: json["address"],
      country: json["country"],
      state: json["state"],
      province: json["province"],
      zipCod: json["zipCod"],
      facebook: json["facebook"],
      instagram: json["instagram"],
      twitter: json["twitter"],
      snapchat: json["snapchat"],
      youtube: json["youtube"],
      status: json["status"],
      msg: json["msg"],
    );
  }

  Map<dynamic, dynamic> toJson() {
    return {
      "name": name,
      "username": username,
      "email": email,
      "password": password,
      "work_email": work_email,
      "phone": phone,
      "work_phone": work_phone,
      "website": website,
      "address": address,
      "country": country,
      "state": state,
      "province": province,
      "zipCod": zipCod,
      "facebook": facebook,
      "instagram": instagram,
      "twitter": twitter,
      "snapchat": snapchat,
      "youtube": youtube,
      "status": status,
      "msg": msg,
    };
  }

//
}