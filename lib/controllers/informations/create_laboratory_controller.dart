// ignore_for_file: avoid_print, depend_on_referenced_packages, unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/laboratory/laboratory_model.dart';
import '../../services/api_links.dart';
import '../../services/settingServices.dart';
import 'package:http/http.dart' as http;

class CreateLaboratoryController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController imageController = TextEditingController();
  TextEditingController idLaboratoryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String countryController = "SYR";

  bool isVisibility = true;

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  void registerLaboratory() async {

    var bodyy = jsonEncode(laboratoryModel(
      image: imageController.text,
      name: nameController.text,
      address: addressController.text,
      phone: phoneController.text,
      email: emailController.text,
      website: websiteController.text,
      password: passwordController.text,
      country: countryController,
    ).toJson());

    try {
      var response = await http.post(Uri.parse(ApiLinks.LaboratoryUrl), body: bodyy, headers: {
        'Content-Type': 'application/json',
        // 'Authorization':'Bearer $token',
      });

      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responsebody = jsonDecode(response.body);

        print("ok------------------------------------------------------");
        print(responsebody);
        print("ok------------------------------------------------------");

        myBox!.put('token', responsebody["Your Data"]);
        print('============ myBox token is put =============');
      } else {
        print(response.statusCode.toString());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
