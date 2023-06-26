// ignore_for_file: avoid_print

import 'package:Medicalty/api/class/status_request.dart';
import 'package:Medicalty/api/functions/handling_data_controller.dart';
import 'package:Medicalty/api/data/remote/request_data.dart';
import 'package:Medicalty/model/create_center/center_body_model.dart';
import 'package:Medicalty/model/create_center/create_center_model.dart';
import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CenterInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();

  RequestData requestData = RequestData(Get.find());
  late StatusRequest statusRequest;

  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController subscriptionType = TextEditingController();
  TextEditingController subscriptionPeriod = TextEditingController();
  TextEditingController formalEmail = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController formalPhone = TextEditingController();
  TextEditingController website = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController province = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  TextEditingController facebook = TextEditingController();
  TextEditingController instagram = TextEditingController();
  TextEditingController twitter = TextEditingController();
  TextEditingController snapchat = TextEditingController();
  TextEditingController youtube = TextEditingController();

  postData(CenterBody? centerBody) async {
    print('==================== centerBody Befor loading: $centerBody');
    statusRequest = StatusRequest.loading;
    var response = await requestData.postCreateCenterData(centerBody);
    
    print('==================== response After loading: $response');

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      print('=============== statusRequest is success: ===============');
      var createCenter = CreateCenter.fromJson(response);
      update();
      print('======================= createcenter :$createCenter');
      print(
          '====================== Create center token : ${createCenter.center.token}');
      myBox!.put('token', createCenter.center.token);
      print('====================== myBox token is put =================');
      print(
          '====================== myBox token is get ${myBox!.get('token')}=================');
    }
  }
//====================================================

  @override
  void onInit() {
    postData(CenterBody());
    update();
    super.onInit();
  }

  String? validateInput(String? value) {
    if (value!.isEmpty) {
      return 'Please enter some text';
    } else if (value.length > 25) {
      return 'Text Can\'t Be Larger Than 25';
    } else if (value.length < 2) {
      return 'Text Can\'t Be Less Than 2';
    }
    return null;
  }

  String? validateEmail(String? value) {
  if (value!.isEmpty) {
    return 'Please enter your email';
  }
  if (!GetUtils.isEmail(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value!.isEmpty) {
    return 'Please enter your password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null;
}

String? validateWebAddress(String? value) {
  if (value!.isEmpty) {
    return 'Please enter a web address';
  }

  try {
    final Uri uri = Uri.parse(value);
    if (uri.scheme.isEmpty || uri.host.isEmpty) {
      throw const FormatException();
    }
  } on FormatException {
    return 'Please enter a valid web address';
  }

  return null;
}
}
