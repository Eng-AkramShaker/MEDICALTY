// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';

class MyTextFieldContainer extends StatelessWidget {
  Widget child;

  MyTextFieldContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [

            ColorApp.greenColor2,
            Colors.white,
            Colors.white,
            // ColorApp.greenColor2,
            Colors.white,
            Colors.white,
            ColorApp.greenColor2,
            ColorApp.greenColor2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: child,
    );
  }
}
