// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, camel_case_types, non_constant_identifier_names, file_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../../../controllers/home_page/Book_Now_Controller.dart';
import '../../widget/homePage/appBar.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';

class Book_Now extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Book_Now_Controller>(
      init: Book_Now_Controller(),
      builder: (ctrl) => Scaffold(
        body: Container(
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
                search_controller: ctrl.search_controller,
                Svg: SVG_image().Svg,
                name_controller: ctrl.name_controller),
            backgroundColor: Colors.transparent,
            //  AppBar -----------------------------------------------------------------
            body: Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 21, right: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Select --------------------------------------------------------------
                      Padding(
                        padding: const EdgeInsets.only(top: 14, bottom: 21),
                        child: New_Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Time',
                            style: C_TextStyle(
                              size: 18,
                              color: ColorApp.blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),

                      // Dr. Blessing --------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(top: 19, bottom: 24),
                        child: Container(
                          height: 105,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    width: 91,
                                    height: 91,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: ColorApp.yellowColor,
                                      image: DecorationImage(
                                        image:
                                            ExactAssetImage(ImagesApp.Blessing),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          ctrl.select_name,
                                                          style: C_TextStyle(
                                                            size: 18,
                                                            color: ColorApp
                                                                .blackColor,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3),
                                                    Text(
                                                      ctrl.select_sub_title,
                                                      style: C_TextStyle(
                                                        size: 12,
                                                        color:
                                                            ColorApp.greyColor7,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Icon(Icons.heart_broken,
                                                    size: 19, color: Colors.red)
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                '2.8',
                                                style: C_TextStyle(
                                                  size: 17,
                                                  color: ColorApp.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                '  (${ctrl.select_views} views)',
                                                style: C_TextStyle(
                                                  size: 15,
                                                  color: ColorApp.greyColor7,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        height: 57,
                        child: Center(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, i) {
                              return ctrl.items_1_Page_3[i];
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 27, bottom: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ctrl.Today,
                              style: C_TextStyle(
                                size: 22,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Afternoon 7 slots --------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 11, right: 173, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ctrl.Afternoon,
                              style: C_TextStyle(
                                size: 22,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // GridView_1 ----------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: ctrl.C_GridView_1(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 11, right: 173, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ctrl.Evening,
                              style: C_TextStyle(
                                size: 22,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // GridView_2 ----------------------------------------------------------
                      ctrl.C_GridView_2(),

                      Padding(
                        padding: const EdgeInsets.only(top: 66, bottom: 50),
                        child: C_Button(
                          name_text: 'book now',
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
