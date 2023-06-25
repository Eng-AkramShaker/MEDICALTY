// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import 'list_View.dart';

class Meal_Plans_W extends StatelessWidget {
  const Meal_Plans_W({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Meal Plans',
                  style: C_TextStyle(
                    size: 18,
                    color: ColorApp.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'See all',
                  style: C_TextStyle(
                    size: 12,
                    color: ColorApp.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return items_4[i];
            },
          )
        ],
      ),
    );
  }
}
