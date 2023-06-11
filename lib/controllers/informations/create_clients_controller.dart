import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateClientsController extends GetxController{

  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final formKey = GlobalKey<FormState>();
  TextEditingController idClientController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController mainFirstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController nameCompanyController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mainPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController attributedController = TextEditingController();
  TextEditingController mainEmailController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
  TextEditingController secondCustomerAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController interruptController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
}