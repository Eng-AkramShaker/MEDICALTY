// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class editcardController extends GetxController {
  dynamic name_string = 'MEGAN SUSAN';
  dynamic id_string = '5124 3256 6589 2048';
  final ID_controller = TextEditingController();
  final Name_controller = TextEditingController();
  final Expiry_controller = TextEditingController();
  final CVC_controller = TextEditingController();
  final Delete_controller = TextEditingController();
  final TEXT_controller = TextEditingController();
  final Button_controller = TextEditingController();
}
