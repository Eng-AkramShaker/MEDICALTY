import 'package:Medicalty/model/accounts/admin_login_model/admin_login_model.dart';
import 'package:Medicalty/services/api.dart';
import 'package:Medicalty/services/api_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  bool isVisibility = true;

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  loginAdmin(AdminLoginModel model,context){
    postRequest(ApiLinks.loginAdmin, model.toJson()).then((value) async{
      if(value['status'] == true){
        String accessToken = value['token'];
        print(value['msg']);
        print('Access token: $accessToken');
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', value['token']);
      }else{
        showDialog(context: context, builder:(context)=> AlertDialog(
          title: Text('Login Alert'),
          content: Text("Email or Password is Wrong please try again"),
        ));
        print(value['msg']);
      }
    });

  }
}