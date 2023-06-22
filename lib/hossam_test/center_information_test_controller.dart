// // ignore_for_file: avoid_print, unused_import, depend_on_referenced_packages

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:medicalty/api/class/status_request.dart';
// import 'package:medicalty/api/data/dataResoures/remote/request_data.dart';
// import 'package:medicalty/api/functions/check_internet.dart';
// import 'package:medicalty/api/functions/handling_data_controller.dart';
// import 'package:medicalty/hossam_test/center_body_model.dart';
// import 'package:medicalty/hossam_test/create_center_model.dart';
// import 'package:medicalty/services/settingServices.dart';


// class TestCreateCenterController extends GetxController {
//   RequestData requestData = RequestData(Get.find());
//   final formKey = GlobalKey<FormState>();

//   late StatusRequest statusRequest;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passWordController = TextEditingController();



// //========================================= first method ======================================
//   // Map<String, dynamic> createCenter = {};
//     //  Map map = {};
  

 
//   // postData(Map<dynamic , dynamic> map) async {
//   //   print('==================== body map: $map');
//   //   statusRequest = StatusRequest.loading;
//   //   var response = await testData.postCreateCenterData(map);
//   //       print('==================== $map');
//   //   print('======================== Respose ==================');
//   //   print(response);

//   //   statusRequest = handlingData(response);
//   //   if (StatusRequest.success == statusRequest) {
//   //     print('=============== check if condetion ===============');
//   //     createCenter.addAll(response);
//   //     update();
//   //     print('======================== Create center =====================');
//   //     print(createCenter);
//   //   }
//   // }



//   postData(CenterBody? centerBody) async {
//     print('==================== centerBody Befor loading: $centerBody');
//     statusRequest = StatusRequest.loading;
//     var response = await requestData.postCreateCenterData(centerBody);
//     print('==================== response After loading: $response');
    
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       print('=============== statusRequest is success: ===============');
//        var createCenter= CreateCenter.fromJson(response) ;
//       update();
//             print('====================== Create center token : ${createCenter.token}');
//             myBox!.put('token', createCenter.token);
//             print('====================== myBox token is put =================');
//             print('====================== myBox token is get ${myBox!.get('token')}=================');

//     }
//   }




  

//   @override
//   void onInit() {
//     postData( CenterBody());
//     update();
//     super.onInit();
//   }
// }
