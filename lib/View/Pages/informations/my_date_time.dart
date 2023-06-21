// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeFormField extends StatefulWidget {
  final String label;
  final DateTime? initialValue;
  final void Function(DateTime?) onChanged;
  String? image;

  DateTimeFormField({
    required this.label,
    this.initialValue,
    required this.onChanged,
    this.image

  });

  @override
  _DateTimeFormFieldState createState() => _DateTimeFormFieldState();
}

class _DateTimeFormFieldState extends State<DateTimeFormField> {
  late DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.0,

      child: InkWell(
        onTap: () {
          showDatePicker(
            context: context,
            initialDate: selectedDate ?? DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          ).then((pickedDate) {
            if (pickedDate != null) {
              setState(() {
                selectedDate = pickedDate;
              });
              widget.onChanged(selectedDate);
            }
          });
        },
        child: SizedBox(
          width: double.infinity, // Set the width to match a normal TextFormField
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: widget.label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(180, 186, 190, 0.5),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(selectedDate != null
                    ? DateFormat.yMMMd().format(selectedDate!)
                    : 'Select a date'),
                if (widget.image != null) Image.asset(widget.image!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
