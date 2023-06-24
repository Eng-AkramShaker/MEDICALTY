// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../api/class/status_request.dart';
import '../../api/data/remote/request_data.dart';
import '../../api/functions/handling_data_controller.dart';
import '../../model/center/center_body_model.dart';
import '../../model/center/create_center_model.dart';
import '../../services/settingServices.dart';

class CenterInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RequestData requestData = RequestData(Get.find());
  late StatusRequest statusRequest;

  TextEditingController centerNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController formalPhoneController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController formalEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController address_1Controller = TextEditingController();
  TextEditingController address_2Controller = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController provinceNameController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

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
      print(
          '====================== Create center token : ${createCenter.token}');
      myBox!.put('token', createCenter.token);
      print('====================== myBox token is put =================');
      print(
          '====================== myBox token is get ${myBox!.get('token')}=================');
    }
  }

  @override
  void onInit() {
    postData(CenterBody());
    update();
    super.onInit();
  }
}
