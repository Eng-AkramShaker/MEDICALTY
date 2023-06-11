import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewEmployeeController extends GetxController{
  String belongsTo = 'Item 1';
  String workingTime = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];


  DateTime? selectedDateTime;

  final formKey = GlobalKey<FormState>();
  TextEditingController idEmployeeController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();
  TextEditingController hourlySalaryController = TextEditingController();
  TextEditingController totalSalaryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController belongsController = TextEditingController();
  TextEditingController workingTimeController = TextEditingController();
}