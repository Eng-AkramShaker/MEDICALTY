class AdminLoginModel {
  String? email;
  String? password;
  String? status;
  String? msg;

  AdminLoginModel({required this.email,
    required this.password,
     this.status,
     this.msg,
  });

  factory AdminLoginModel.fromJson(Map<String, dynamic> json) {
    return AdminLoginModel(
      email: json["email"],
      password: json["password"],
      status: json["status"],
      msg: json["msg"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": this.email,
      "password": this.password,
      "status": this.status,
      "msg": this.msg,
    };
  }

//
}
