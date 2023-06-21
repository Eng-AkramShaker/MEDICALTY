// ignore_for_file: camel_case_types

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../View/widget/homePage/list_View.dart';

class paymentController extends GetxController {
  dynamic name_controller = 'Emily Kevin';
  dynamic score = '4.9';
  dynamic sub_title_controller = 'High Intensity Training';
  dynamic Date_controller = '20 October 2021 - Wednesday';
  dynamic Time_controller = '09:30 AM';
  dynamic Cost_controller = '\$ 175.99';
//----- Payment items_ViSA ------------------------------------------------------------------------

  List items_ViSA = [
    grid_V_Payment(name_visa: 'ViSA', num: 2525),
    grid_V_Payment(name_visa: 'GFDV', num: 5252),
    grid_V_Payment(name_visa: 'HGHDF', num: 8588),
    grid_V_Payment(name_visa: 'KKLK', num: 8585),
  ];
}
