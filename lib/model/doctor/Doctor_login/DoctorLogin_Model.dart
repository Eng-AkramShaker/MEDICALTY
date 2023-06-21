import 'Token.dart';

class DoctorLoginModel {
  DoctorLoginModel({
      this.status, 
      this.errNum, 
      this.msg, 
      this.token,});

  DoctorLoginModel.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    token = json['token'] != null ? Token.fromJson(json['token']) : null;
  }
  bool? status;
  String? errNum;
  String? msg;
  Token? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    if (token != null) {
      map['token'] = token?.toJson();
    }
    return map;
  }

}