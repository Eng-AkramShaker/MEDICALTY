import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewDoctorController extends GetxController{
  String genderValue = 'Item 1';
  String nationalityValue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final formKey = GlobalKey<FormState>();
  DateTime? selectedDateOfBirth;

  TextEditingController idDoctorController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController jobNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController obDescController = TextEditingController();
  TextEditingController aboutDocController = TextEditingController();
  TextEditingController profileDocController = TextEditingController();
  TextEditingController yearExperienceController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController workPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController workEmailController = TextEditingController();
}