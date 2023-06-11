import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewRequestController extends GetxController{

  final formKey = GlobalKey<FormState>();
  String selectionClients = 'Item 1';
  String selectionClients2 = 'Item 1';
  String reservationTimes = 'Item 1';
  String supervisingPhysician = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  DateTime? selectedDateTime;

  DateTime? startingTime;
  DateTime? endingTime;

  TextEditingController idRequestController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController serviceDetailsController = TextEditingController();
  TextEditingController commentsController = TextEditingController();
  TextEditingController notesController = TextEditingController();
}