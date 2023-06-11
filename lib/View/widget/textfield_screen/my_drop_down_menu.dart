import 'package:flutter/material.dart';

class MyDropDownMenu extends StatelessWidget {
  Function(String?) onChanged;
  List myList;
  String? text;

  MyDropDownMenu({required this.onChanged,required this.myList,this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(180, 186, 190, 0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: DropdownButtonFormField<String>(
        hint: Text(text ?? 'Main'),

        items: myList.map((e) {
          return DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged:onChanged
        ,
        validator: (value) {
          if (value == null) {
            return 'Please select an option';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.0),
          ),
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        ),
      ),
    );
  }
}
