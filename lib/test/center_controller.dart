// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api.dart';
import 'api_links.dart';
import 'center_register_model.dart';

class CenterController extends GetxController {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController secondPhoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController officalEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController secondAddressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtNameController = TextEditingController();
  TextEditingController districtNameController2 = TextEditingController();
  TextEditingController postalController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
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
