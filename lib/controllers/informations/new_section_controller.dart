import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewSectionController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController idSectionController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController descController = TextEditingController();
}