// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api_.dart';
import 'api_links.dart';
import 'model.dart';

class CenterController extends GetxController {
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
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController zip_codeController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

  void registerCenter(RegisterCenterModel model) {
    postRequest(url: ApiLinks.createCenterUrl, map: model.toJson())
        .then((value) {
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