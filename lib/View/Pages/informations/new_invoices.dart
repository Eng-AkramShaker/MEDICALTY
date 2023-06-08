// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'new_employee.dart';

class NewInvoicesPage extends StatelessWidget {
  TextEditingController idInvoicesController = TextEditingController();
  TextEditingController payController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController paymentDueController = TextEditingController();
  TextEditingController itemsController = TextEditingController();
  TextEditingController accountingCodeController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
  String imagePath = 'assets/images/textfield';

  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Invoices',
        ),
        body: SingleChildScrollView(
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
                    OnBoardingTextFormField(
                      controller: idInvoicesController,
                      validator: () {},
                      hintText: '#ID Invoices',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/id_section.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: payController,
                      validator: () {},
                      hintText: 'Pay for',
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: addressController,
                      validator: () {},
                      hintText: 'Invoices address',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/location.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: dateController,
                      validator: () {},
                      hintText: 'Date for transmission',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/date.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: paymentDueController,
                      validator: () {},
                      hintText: 'Payment due',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                    OnBoardingTextFormField(
                      controller: itemsController,
                      validator: () {},
                      hintText: 'Items',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: accountingCodeController,
                      validator: () {},
                      hintText: 'Accounting code',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/code.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: customerAddressController,
                      validator: () {},
                      hintText: 'Customer address 1',
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
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                    Get.to(NewEmployeePage());
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
    );
  }
}
