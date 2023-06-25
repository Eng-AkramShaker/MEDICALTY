// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Pages/drawers/notifications_drawer.dart';

class Row_Switch extends StatefulWidget {
  String text;
  Row_Switch({super.key, required this.text});

  @override
  State<Row_Switch> createState() => _Row_SwitchState();
}

class _Row_SwitchState extends State<Row_Switch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Switzer',
          ),
        ),
        SwitchExample()
      ],
    );
  }
}
