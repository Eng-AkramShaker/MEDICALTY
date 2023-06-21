// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:convert';

import 'package:http/http.dart' as http;



Future<Map<dynamic, dynamic>> postRequest({required String url,required Map map ,String? token}) async {
  try {
    var response =
    await http.post(Uri.parse(url), body: json.encode(map), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'token':'$token',
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      var responsebody = jsonDecode(response.body);
      return responsebody;
    } else {
      return {"error": response.statusCode};
    }
  } catch (e) {
    return {"error": e};
  }
}