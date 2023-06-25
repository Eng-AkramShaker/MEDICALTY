// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<dynamic, dynamic>> postRequest(String url, Map map) async {
  try {
    var response =
        await http.post(Uri.parse(url), body: json.encode(map), headers: {
      'Content-Type': 'application/json',
      // 'Authorization':'Bearer $token',
    });
    // print("response: ${response.body}");
    if (response.statusCode >= 200 && response.statusCode < 300) {
      var responsebody = jsonDecode(response.body);
      return responsebody;
    } else {
      // print(response.statusCode.toString());
      return {"error": response.statusCode};
    }
  } catch (e) {
    print(e.toString());
    return {"error": e};
  }
}
