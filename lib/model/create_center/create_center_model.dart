// To parse this JSON data, do
//
//     final createCenter = createCenterFromJson(jsonString);

import 'dart:convert';

CreateCenter createCenterFromJson(String str) => CreateCenter.fromJson(json.decode(str));

String createCenterToJson(CreateCenter data) => json.encode(data.toJson());

class CreateCenter {
    bool? status;
    String? errNum;
    String? msg;
    String? token;

    CreateCenter({
         this.status,
         this.errNum,
         this.msg,
         this.token,
    });

    factory CreateCenter.fromJson(Map<String, dynamic> json) => CreateCenter(
        status: json["status"],
        errNum: json["errNum"],
        msg: json["msg"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "errNum": errNum,
        "msg": msg,
        "token": token,
    };
}
