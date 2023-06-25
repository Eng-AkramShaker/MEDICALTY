import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<dynamic, dynamic>> getRequest(String url) async {
  try {
    http.Response response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200 || response.statusCode == 201) {
      var responseBody = jsonDecode(response.body);
      print(response.body);
      return responseBody;
    } else {
      return {'error': response.statusCode};
    }
  } catch (e) {
    return {"error": e};
  }
}

Future<Map<dynamic, dynamic>> postRequest(
    {required String url, required Map map, String? token}) async {
  try {
    var response =
        await http.post(Uri.parse(url), body: json.encode(map), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'token': '$token',
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
