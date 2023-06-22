// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/new_expenses_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'my_date_time.dart';
import 'new_invoices.dart';

class NewExpensesPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewExpensesController>(
      init: NewExpensesController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Expenses',
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
                      OnBoardingTextFormField(
                        controller: controller.idExpenesesController,
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
                        labelText: '#ID Expenses',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/id_section.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
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
                        labelText: 'address',
                        keyboardType: TextInputType.streetAddress,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/location.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller: controller.descController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Description ';
                          }
                          if (value.length > 2500) {
                            return 'Description cannot be longer than 2500 characters';
                          }
                          if (value.length < 2) {
                            return 'Description  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'description',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: OnBoardingTextFormField(
                              controller: controller.timeController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the Time ';
                                }
                                if (value.length > 25) {
                                  return 'Time cannot be longer than 25 characters';
                                }
                                if (value.length < 2) {
                                  return 'Time  must have at least 2 characters';
                                }
                                return null;
                              },

                              labelText: 'time',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              suffixIcon: Image.asset(
                                '$imagePath/time.png',
                                height: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: DateTimeFormField(
                              label: 'Select a date',
                              image: '$imagePath/date.png',
                              initialValue: controller.selectedDateTime,
                              onChanged: (DateTime? value) {
                                controller.selectedDateTime = value;

                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller: controller.valueController,
                        validator: (value) {

                          if (value == null || value.isEmpty) {
                            return 'Please enter the Value ';
                          }
                          if (value.length > 25) {
                            return 'Value cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Value  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'The value of the expense \$',
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/value.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      MyDropDownMenu(
                        text: 'Pay for',
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.dropdownvalue = val!;
                          }
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller: controller.accountingCodeController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Accounting code ';
                          }
                          if (value.length > 25) {
                            return 'Accounting code cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Accounting code  must have at least 2 characters';
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
                      OnBoardingTextFormField(
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
                        labelText: 'Customer address1',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/location.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
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
                            Text('Attach File', textAlign: TextAlign.left),
                            Icon(
                              Icons.add,
                              color: ColorApp.greenColor,
                              size: 35,
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 136),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21.0,
                  ),
                  child: OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(NewInvoicesPage());
                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

                    },
                    text: 'Create Expenses',
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
