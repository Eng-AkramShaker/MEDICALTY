// ignore_for_file: avoid_print, non_constant_identifier_names, camel_case_types

import 'package:Medicalty/services/api_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/laboratory/laboratory_model.dart';
import '../../services/api.dart';

class Create_laboratoryController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController password = TextEditingController();

  void registerCreate_laboratory(laboratoryModel model) {
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
