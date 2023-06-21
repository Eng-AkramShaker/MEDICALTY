// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/new_invoices_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/my_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'my_date_time.dart';
import 'new_employee.dart';

class NewInvoicesPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewInvoicesController>(
      init: NewInvoicesController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Invoices',
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 21.0, vertical: 31.0),
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundColor: ColorApp.greyColor2,
                          radius: 60,
                          child: SvgPicture.asset(
                            'assets/images/profile-edit.svg',
                            height: 130,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.idInvoicesController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the ID ';
                          }
                          if (value.length > 25) {
                            return 'ID cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'ID  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: '#ID Invoices',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/id_section.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      MyDropDownMenu(
                        text: "Pay for",
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.dropdownvalue = val!;
                          }
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.addressController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Address ';
                          }
                          if (value.length > 25) {
                            return 'Address cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Address  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Invoices address',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/location.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      DateTimeFormField(
                        label: 'Select a date',
                        image: '$imagePath/date.png',
                        initialValue: controller.selectedDateTime,
                        onChanged: (DateTime? value) {
                          controller.selectedDateTime = value;

                        },
                      ),
                      const SizedBox(height: 15.0),
                      MyDropDownMenu(
                          text: "Payment due",
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.dropdownvalue = val!;
                          }
                      ),
                      // const SizedBox(height: 15.0),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorApp.primaryColor,
                      minimumSize: Size(318, 51),
                    ),
                    onPressed: () {},
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: OnBoardingTextWidget(
                          text: 'Select Items',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 21.0, vertical: 15.0),
                  child: Column(
                    children: [
                      MyDropDownMenu(
                          text: "Items",
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.dropdownvalue = val!;
                          }
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.accountingCodeController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Accounting ';
                          }
                          if (value.length > 25) {
                            return 'Accounting cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Accounting  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Accounting code',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/code.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.customerAddressController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Address ';
                          }
                          if (value.length > 25) {
                            return 'Address cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Address  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Customer address 1',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/location.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(176, 201, 41, 0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 21.0, vertical: 15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  OnBoardingTextWidget(
                                      text: 'Subtotal',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                  OnBoardingTextWidget(
                                      text: '\$${controller.formattedSubTotal}',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  OnBoardingTextWidget(
                                      text: 'Discount',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                  OnBoardingTextWidget(
                                      text: '\$${controller.formattedDiscount}',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  OnBoardingTextWidget(
                                      text: 'TAX',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                  OnBoardingTextWidget(
                                      text: '\$${controller.formattedTax}',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  OnBoardingTextWidget(
                                      text: 'Total',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                  OnBoardingTextWidget(
                                      text: '\$${controller.formattedTotal}',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  OnBoardingTextWidget(
                                      text: 'Required deposit',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                  OnBoardingTextWidget(
                                      text: '\$${controller.formattedRequiredDeposit}',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorApp.blackColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorApp.primaryColor,
                      minimumSize: Size(318, 51),
                    ),
                    onPressed: () {},
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OnBoardingTextWidget(
                              text: 'Message Client',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            Icon(
                              Icons.add,
                              color: ColorApp.greenColor,
                              size: 35,
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21.0,
                  ),
                  child: OnBoardingButton(
                    onPressed: () {

                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(NewEmployeePage());

                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

                    },
                    text: 'Create Invoices',
                    size: 22,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
