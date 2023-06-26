// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:convert';
import 'package:Medicalty/api/class/status_request.dart';
import 'package:Medicalty/api/functions/check_internet.dart';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;


class Crud {
  //===================== Get request ===================================================
  Future<Either<StatusRequest, Map>> getRequest(
      String linkUrl, Map<String, String>? headers) async {
    try {
      // check internet ==============================
      if (await checkInternet()) {
        var response = await http.get(Uri.parse(linkUrl), headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print('=============== responsebody map ===========================');
          print(responsebody);
          print('=============== responsebody ===========================');

          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        // return offline failure =========================
        return const Left(StatusRequest.offLineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }

  //===================== Post request ===================================================

  Future<Either<StatusRequest, Map>> postRequest(String linkUrl,
      Map<String, String>? headers, Map<dynamic, dynamic> map) async {
        print('=========================== postRequest');

    try {
     
      if (await checkInternet()) {
        print('=========================== if checkInternet ');

        var response = await http.post(Uri.parse(linkUrl),
            body: json.encode(map), headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print('=============== responsebody ===========================');
          print(responsebody);
          print('=============== responsebody ===========================');

          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        // return offline failure =========================
        return const Left(StatusRequest.offLineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }

      }

  //===================== Put request ===================================================

  Future<Either<StatusRequest, Map>> putRequest(
      String linkUrl, Map<String, String>? headers, Map map) async {
    try {
      // check internet ==============================
      if (await checkInternet()) {
        var response = await http.put(Uri.parse(linkUrl),
            body: json.encode(map), headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print('=============== responsebody ===========================');
          print(responsebody);
          print('=============== responsebody ===========================');

          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        // return offline failure =========================
        return const Left(StatusRequest.offLineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }

  //===================== Delete request ===================================================

  Future<Either<StatusRequest, Map>> deleteRequest(
      String linkUrl, Map<String, String>? headers, Map map) async {
    try {
      // check internet ==============================
      if (await checkInternet()) {
        var response = await http.delete(Uri.parse(linkUrl),
            body: json.encode(map), headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print('=============== responsebody ===========================');
          print(responsebody);
          print('=============== responsebody ===========================');

          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        // return offline failure =========================
        return const Left(StatusRequest.offLineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }
}
