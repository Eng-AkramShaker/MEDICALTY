import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewExperiencesController extends GetxController{

  String workValue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final formKey = GlobalKey<FormState>();
  TextEditingController idExperiencesController = TextEditingController();
  TextEditingController nameExpController = TextEditingController();
  TextEditingController namePlaceController = TextEditingController();

  TextEditingController workPlaceController = TextEditingController();
  TextEditingController beginningWorkController = TextEditingController();
  TextEditingController workFinishedController = TextEditingController();
}