// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class InSupport extends StatefulWidget {
  String text;
  String textt;
  InSupport({super.key, required this.text, required this.textt});

  @override
  State<InSupport> createState() => _InSupportState();
}

class _InSupportState extends State<InSupport> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Switzer',
            ),
          ),
          Icon(
            Icons.link,
            color: Color(0xff7CB041),
          )
        ],
      ),
      Text(
        widget.textt,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Switzer',
        ),
      ),
    ]);
  }
}
