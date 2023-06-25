// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:Medicalty/services/api_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/Insurance/Insurance_model.dart';
import '../../services/api.dart';

class InsuranceController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController formal_emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController formal_phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

  void registerInsurance(InsuranceModel model) {
    postRequest(ApiLinks.insuranceUrl, model.toJson()).then((value) {
      if (value['status'] == true) {
        // print(value);
        print(value['msg']);
        // print(model.msg);
      } else {
        print('========================Error=================');
        print(value['msg']);
        print('========================Error=================');
      }
    });
  }
}
