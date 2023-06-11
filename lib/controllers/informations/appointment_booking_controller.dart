import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentBookingController extends GetxController{
  final formKey = GlobalKey<FormState>();
  String doctorSelectedValue = 'Item 1';

  String assignedSelectedValue = 'Item 1';
  DateTime? selectedDateReservation;
  DateTime? selectedStartTime;
  DateTime? selectedEndTime;
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  TextEditingController jobNumerController = TextEditingController();
  TextEditingController doctorNameController = TextEditingController();
  TextEditingController assignedController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
}