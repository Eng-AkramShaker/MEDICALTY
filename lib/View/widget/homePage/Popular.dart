// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';

import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import 'list_View.dart';

class Popular_W extends StatelessWidget {
  const Popular_W({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 538,
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
                  'Popular Doctors',
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
              return items_3[i];
            },
          )
        ],
      ),
    );
  }
}
