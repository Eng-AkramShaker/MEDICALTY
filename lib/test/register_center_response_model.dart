// To parse this JSON data, do
//
//     final registerCenterResponseModel = registerCenterResponseModelFromJson(jsonString);

import 'dart:convert';

RegisterCenterResponseModel registerCenterResponseModelFromJson(String str) => RegisterCenterResponseModel.fromJson(json.decode(str));

String registerCenterResponseModelToJson(RegisterCenterResponseModel data) => json.encode(data.toJson());

class RegisterCenterResponseModel {
  bool? status;
  String? errNum;
  String? msg;

  RegisterCenterResponseModel({
    this.status,
    this.errNum,
    this.msg,
  });

  factory RegisterCenterResponseModel.fromJson(Map<String, dynamic> json) => RegisterCenterResponseModel(
    status: json["status"],
    errNum: json["errNum"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "errNum": errNum,
    "msg": msg,
  };
}
