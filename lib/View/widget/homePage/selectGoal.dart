// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';

class Select_Goal extends StatelessWidget {
  dynamic book_1_controller = 'Medical Centers';
  dynamic book_2_controller = 'treatment centres';
  dynamic book_3_controller = 'Pharmacies';
  dynamic search_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Padding(
      padding: const EdgeInsets.only(top: 3, bottom: 12),
      child: Container(
        height: 69,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: 32,
                      width: 116,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 177, 177, 177),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9, bottom: 8),
                        child: Text(
                          "$book_1_controller",
                          style: C_TextStyle(
                            size: 11,
                            color: ColorApp.greyColor5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: 32,
                      width: 116,
                      decoration: BoxDecoration(
                        color: ColorApp.blackColor2,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9, bottom: 8),
                        child: Text(
                          "$book_2_controller",
                          style: C_TextStyle(
                            size: 11,
                            color: ColorApp.whiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 177, 177, 177),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9, bottom: 8),
                        child: Text(
                          "$book_3_controller",
                          style: C_TextStyle(
                            size: 11,
                            color: ColorApp.greyColor5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
