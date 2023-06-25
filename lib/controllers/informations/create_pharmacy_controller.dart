import 'dart:js';

import 'package:Medicalty/services/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/pharmacy/pharmcy_register_model.dart';
import '../../services/api_links.dart';

class CreatePharmacyController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController idPharmacyController = TextEditingController();
  TextEditingController namePharmacyController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController phoneNumber2Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController officalEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController provinceController = TextEditingController();

  TextEditingController stateController = TextEditingController();
  TextEditingController districtNameController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

  registerPharmacy(PharmacyRegisterModel pharmacyRegisterModel ,context){
    postRequest(ApiLinks.RegisterPharmacyUrl, pharmacyRegisterModel.toJson()).then((value) async {
      if(value['status'] == true) {
        String accessToken = value['token'];
        print(value['msg']);
        print('Access token: $accessToken');
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', value['token']);
      }else{
        showDialog(context: context, builder:(context)=> const AlertDialog(
          title: Text('Login Alert'),
          content: Text("Email or Password is Wrong please try again"),
        ));
        print(value['msg']);
      }
    });
}
}