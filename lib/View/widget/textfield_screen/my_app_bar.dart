// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constatnt/color_app.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: ColorApp.blackColor,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.keyboard_arrow_left, size: 35),
      ),
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        '$title',
        style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: ColorApp.blackColor,
            fontFamily: 'Montserrat'),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
