import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateLaboratoryController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController idLaboratoryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisibility = true;

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }
}