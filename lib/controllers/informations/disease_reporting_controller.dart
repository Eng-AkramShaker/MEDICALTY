import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiseaseReportingController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController idDieasesController = TextEditingController();
  TextEditingController nameDiseaseController = TextEditingController();
  TextEditingController descController = TextEditingController();

}