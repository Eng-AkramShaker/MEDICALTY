// ignore_for_file: prefer_const_constructors, prefer_if_null_operators, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NewDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
        color: Color.fromARGB(255, 232, 225, 225),
        thickness: 1.0,
        indent: 20.0,
        endIndent: 20.0);
  }
}

// -------------------------------------------------------------------------------
Widget New_Divider({color, thickness}) {
  return Divider(
    color: color == null ? Color.fromARGB(255, 121, 121, 121) : color,
    thickness: thickness,
  );
}

// -------------------------------------------------------------------------------
Widget Tow_Divider({color, thickness}) {
  return Padding(
      padding: const EdgeInsets.only(top: 28, bottom: 20, right: 20),
      child: SizedBox(height: 2, child: New_Divider()));
}
