import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPatientController extends GetxController{
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String bloodTypeValue = 'Item 1';
  String genderValue = 'Item 1';
  String NationalityValue = 'Item 1';
  DateTime? selectedDateOfBirth;
  final formKey = GlobalKey<FormState>();
  TextEditingController idPatientController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController fileNoController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController nameDiseaseController = TextEditingController();
  TextEditingController descController = TextEditingController();

}