// ignore_for_file: unused_local_variable, avoid_print, depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../model/Insurance/Insurance_model.dart';

class InsuranceCompanyController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController idInsuranceController = TextEditingController();
  TextEditingController nameInsuranceController = TextEditingController();
  TextEditingController descInsuranceController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController secondPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController officalEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  TextEditingController secondAddressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController postalController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

  void registerInsurance() async {
    var url = "http://medicalty.space/api/center/insuranceCompany";

    var bodyy = jsonEncode(
      InsuranceModel(
        name: nameInsuranceController.text,
        description: descInsuranceController.text,
        email: emailController.text,
        formal_email: officalEmailController.text,
        phone: phoneController.text,
        formal_phone: secondPhoneController.text,
        website: websiteController.text,
        address1: addressController.text,
        country: countryController.text,
        state: stateController.text,
        province: "Los Angeles",
        zipCode: postalController.text,
        facebook: facebookController.text,
        instagram: instagramController.text,
        twitter: twitterController.text,
        snapchat: snapchatController.text,
        youtube: youtubeController.text,
      ).toJson(),
    );
    var urlParse = Uri.parse(url);

    try {
      var response = await http.post(Uri.parse(url), body: bodyy, headers: {
        'Content-Type': 'application/json',
        // 'Authorization':'Bearer $token',
      });

      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responsebody = jsonDecode(response.body);

        print("ok------------------------------------------------------");
        print(responsebody);
        print("ok------------------------------------------------------");
      } else {
        print("Error");
        print(response.statusCode.toString());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
// 