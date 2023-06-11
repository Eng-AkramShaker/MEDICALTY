// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medicalty/View/Pages/home_page/HomePage.dart';

import '../../View/widget/homePage/list_View.dart';
import '../../constatnt/color_app.dart';

class Book_Now_Controller extends GetxController {
  String name_controller = 'Sophia !';
  TextEditingController search_controller = TextEditingController();
  String select_name = 'Dr. Blessing';
  String select_sub_title = 'Specialist Dentist';
  String select_views = '295';
  String Today = 'Today, 23 Feb';
  String Afternoon = 'Afternoon 7 slots';
  String Evening = 'Evening 6 slots';

  // ------------------------------------------------------------------------

  List items_1_Page_3 = [
    grid_V_3(
        Date: 'Today, 23 Feb',
        sub_text: 'No slots available',
        color: ColorApp.backgroundWhaitColor,
        color_2: ColorApp.greyColor6),
    grid_V_3(
        Date: 'Today, 23 Feb',
        sub_text: 'No slots available',
        color: ColorApp.blackColor,
        color_2: const Color(0xffF5F5F5)),
    grid_V_3(
        Date: 'Today, 23 Feb',
        sub_text: 'No slots available',
        color: ColorApp.blackColor,
        color_2: ColorApp.backgroundWhaitColor),
    grid_V_3(
        Date: 'Today, 23 Feb',
        sub_text: 'No slots available',
        color: ColorApp.blackColor,
        color_2: const Color(0xffF5F5F5))
  ];

  List items_2_Page_3 = [
    grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
    grid_V_4(Date: '1:30 PM', color: ColorApp.primaryColor),
    grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
    grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
    grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
    grid_V_4(Date: '1:30 PM', color: ColorApp.blackBlueColor),
    grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
  ];

//   -------------------------------------------------------------

  Widget C_GridView_2() {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: GridView.count(
        crossAxisSpacing: 5,
        childAspectRatio: 1.7,
        mainAxisSpacing: 1,
        crossAxisCount: 4,
        children: [
          Column(children: [items_2_Page_3[1]]),
          Column(children: [items_2_Page_3[2]]),
          Column(children: [items_2_Page_3[3]]),
          Column(children: [items_2_Page_3[4]]),
          Column(children: [items_2_Page_3[5]]),
          Column(children: [items_2_Page_3[6]]),
        ],
      ),
    );
  }

//  -------------------------------------------------------------

  Widget C_GridView_1() {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: GridView.count(
        crossAxisSpacing: 5,
        childAspectRatio: 1.7,
        mainAxisSpacing: 1,
        crossAxisCount: 4,
        children: [
          Column(children: [items_2_Page_3[1]]),
          Column(children: [items_2_Page_3[2]]),
          Column(children: [items_2_Page_3[3]]),
          Column(children: [items_2_Page_3[4]]),
          Column(children: [items_2_Page_3[5]]),
          Column(children: [items_2_Page_3[6]]),
          Column(children: [items_2_Page_3[2]]),
        ],
      ),
    );
  }
  // ============================================================================

  book_Button() {
    Get.to(HomePage());
    update();
  }
}
