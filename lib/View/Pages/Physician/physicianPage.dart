// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_declarations, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_new, unused_element, must_be_immutable, unnecessary_import, unused_import, sort_child_properties_last, file_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../../widget/drawer/drawer_list.dart';
import '../../widget/homePage/Popular.dart';
import '../../widget/homePage/appBar.dart';
import '../../widget/homePage/bestDoctor.dart';
import '../../widget/homePage/cardDoctor.dart';
import '../../widget/homePage/category.dart';
import '../../widget/homePage/divider.dart';
import '../../widget/homePage/listControllerWidget.dart';
import '../../widget/homePage/list_View.dart';
import '../../widget/homePage/meal_Plans.dart';
import '../../widget/homePage/selectGoal.dart';
import '../../widget/homePage/textBox.dart';
import '../drawers/my_drawer_header.dart';
import '../home_page/Book_Now.dart';
import '../review/trainerDetailPage.dart';

class PhysicianPage extends StatelessWidget {
  dynamic name_controller = 'Physician and ....Dr';

  dynamic search_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: list_colors2,
        ),
      ),
      child: Scaffold(
        appBar: C_AppBar(
            search_controller: search_controller,
            Svg: SVG_image().Svg,
            name_controller: name_controller),
        backgroundColor: Colors.transparent,
        //  Appar -----------------------------------------------------------------
        body: Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // photo -----------------------------------------------------------------
                  Photo_First(),
                  // select  ---------------------------------------------------------------
                  SelectyourGoalWidget(text: "Select your Goal"),
                  Select_Goal(),
                  // Category  --------------------------------------------------------------
                  CategoryWidget(word: "Category"),
                  Category_W(),
                  Tow_Divider(),
                  // Popular  --------------------------------------------------------------
                  Popular_W(),

                  // Meal Plans  --------------------------------------------------------------

                  Meal_Plans_W(),

                  // The best doctors Four -------------------------------------------------------------------------
                  NewTextBestDoctorTwoWidget(word: 'The best doctors'),

                  NewWidgetBestDoctorFour(),

                  // ================ The best doctor text ===================
                  NewTextBestDoctorTwoWidget(word: 'The best doctors'),
                  // ================= ListViews =============================
                  NewListControllerBestDoctorOneWidget(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8, bottom: 8, right: 20),
                    child: Container(height: 5, child: New_Divider()),
                  ),
                  // =============== The best doctor text ====================
                  NewTextBestDoctorTwoWidget(word: 'The best doctors'),
                  // =============== ListViews ===============================
                  NewListControllerBestDoctorTwoWidget(),
                  // ============== TwoTop card doctor rate ===============
                  NewTextBookNowWidget(text: 'Book Now'),
                  // =============== List Categories =========================
                  NewListControllerCategoryWidget(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== Three top card doctor rate ===========
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: NewListControllerCardTwoWidget_1(
                        screenWidth: MediaQuery.of(context).size.width),
                  ),
                  // =============== List doctor per houres ===============
                  NewListControllerBestDoctorOneWidget(),
                  // =============== popular doctors text =================
                  NewTextBestDoctorTwoWidget(word: 'Popular Doctors'),
                  // =============== List detailes doctores ==============
                  NewListControllerBestDoctorPopularWidget(),
                  // =============== Social worker text ===========================
                  NewTextBookNowWidget(text: 'Social worker'),
                  // =============== Two top list of doctores title and rate ==================
                  NewListDoctorControllerCardWidgetThree(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== nutrition text ===========================
                  NewTextBookNowWidget(text: 'nutrition'),
                  // =============== Two top list of doctores title and rate ==================
                  NewListDoctorControllerCardWidgetThree(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== Paid adss text =================
                  NewTextBestDoctorTwoWidget(word: 'Paid ads'),
                  // =============== List detailes doctores ==============
                  NewListControllerBestDoctorPopularWidget(),
                  // =============== natural therapy text =================

                  NewTextBestDoctorTwoWidget(word: 'natural therapy'),
                  // =============== List detailes doctores ==============
                  NewListControllerBestDoctorPopularWidget(),
                  // =============== Medical centers text ===========================
                  NewTextBookNowWidget(text: 'Medical centers'),
                  // =============== List Categories =========================
                  NewListControllerCategoryWidget(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== Three top card doctor rate ===========
                  NewListControllerCardTwoWidget_1(
                      screenWidth: MediaQuery.of(context).size.width),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
