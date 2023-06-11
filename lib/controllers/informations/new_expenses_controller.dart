import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewExpensesController extends GetxController{

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

  DateTime? selectedDateTime;
  TextEditingController idExpenesesController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  TextEditingController payController = TextEditingController();
  TextEditingController accountingCodeController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
}