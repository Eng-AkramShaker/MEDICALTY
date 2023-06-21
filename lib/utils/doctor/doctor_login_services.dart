import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<dynamic, dynamic>> postRequest(String url, Map map) async {
  try {
    var response =
    await http.post(Uri.parse(url), body: json.encode(map), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      var responsebody = jsonDecode(response.body);
      return responsebody;
    } else {
      return {"error": response.statusCode};
    }
  } catch (e) {
    return {"error":e};}
}