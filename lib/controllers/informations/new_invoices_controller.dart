import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NewInvoicesController extends GetxController{
  TextEditingController idInvoicesController = TextEditingController();
  TextEditingController payController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController paymentDueController = TextEditingController();
  TextEditingController itemsController = TextEditingController();
  TextEditingController accountingCodeController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();


 late double subTotal = 0.00;
  late  double discount = 0.00;
  late  double tax = 0.00;
  late  double total = 0.00;
  late  double requiredDeposit = 0.00;


  String formattedSubTotal = '';
  String formattedDiscount = '';
  String formattedTax = '';
  String formattedTotal = '';
  String formattedRequiredDeposit = '';
  @override
  void onInit() {
    formattedSubTotal = subTotal.toStringAsFixed(2);
    formattedDiscount = discount.toStringAsFixed(2);
    formattedTax = tax.toStringAsFixed(2);
    formattedTotal = total.toStringAsFixed(2);

    formattedRequiredDeposit = requiredDeposit.toStringAsFixed(2);
  }

  DateTime? selectedDateTime;
  String dropdownvalue = 'Item 1';
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  final formKey = GlobalKey<FormState>();
}