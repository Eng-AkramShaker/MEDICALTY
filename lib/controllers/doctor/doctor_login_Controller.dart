import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../model/doctor/Doctor_login/DoctorLogin_Model.dart';
import '../../utils/doctor/doctor_login_link_api.dart';
import '../../utils/doctor/doctor_login_services.dart';

class DoctorLoginController extends GetxController{


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  adminLogin (DoctorLoginModel doctorLogin){
    postRequest(DoctorLoginApiLinks.loginAdminUrl, doctorLogin.toJson()).then((value)  {
      if(value['status']==true){
        print(value['msg']);
      }else{
        print(value['msg']);
      }
    });
  }
}