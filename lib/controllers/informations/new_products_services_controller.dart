import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewProductsServicesController extends GetxController{
  final formKey = GlobalKey<FormState>();

 String productType = 'Item 1';
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  TextEditingController idProductController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescController = TextEditingController();
  TextEditingController unitPriceController = TextEditingController();

  TextEditingController unitNumberController = TextEditingController();
}