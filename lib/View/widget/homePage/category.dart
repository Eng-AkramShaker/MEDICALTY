// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

import 'list_View.dart';

class Category_W extends StatelessWidget {
  const Category_W({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items_1.length,
          itemBuilder: (context, i) {
            return items_1[i];
          },
        ),
      ),
    );
  }
}
