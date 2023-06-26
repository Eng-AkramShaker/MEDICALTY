import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/pharmacy/AddProduct.dart';
import '../../services/api.dart';
import '../../services/api_links.dart';

class AddingProductPharmacyController extends GetxController{
  final formKey = GlobalKey<FormState>();

  TextEditingController idProductController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController informationController = TextEditingController();
  TextEditingController priceController = TextEditingController();


  addProductPharmacy(AddProductModel addProductModel ,context){
    postRequest(ApiLinks.addProductsPharmacyUrl, addProductModel.toJson()).then((value) async {
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