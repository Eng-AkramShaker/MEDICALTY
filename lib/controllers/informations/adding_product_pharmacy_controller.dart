import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddingProductPharmacyController extends GetxController{
  final formKey = GlobalKey<FormState>();

  TextEditingController idProductController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController informationController = TextEditingController();
  TextEditingController priceController = TextEditingController();
}