// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'new_invoices.dart';

class NewExpensesPage extends StatelessWidget {
  TextEditingController idExpenesesController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  TextEditingController payController = TextEditingController();
  TextEditingController accountingCodeController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Expenses',
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
                      controller: idExpenesesController,
                      validator: () {},
                      hintText: '#ID Expenses',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/id_section.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: addressController,
                      validator: () {},
                      hintText: 'address',
                      keyboardType: TextInputType.streetAddress,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/location.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: descController,
                      validator: () {},
                      hintText: 'description',
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
                            controller: timeController,
                            validator: () {},
                            hintText: 'time',
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
                          child: OnBoardingTextFormField(
                            controller: dateController,
                            validator: () {},
                            hintText: 'Date',
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            suffixIcon: Image.asset(
                              '$imagePath/date.png',
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: valueController,
                      validator: () {},
                      hintText: 'The value of the expense \$',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/value.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: payController,
                      validator: () {},
                      hintText: 'Pay for',
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
                      hintText: 'Customer address1',
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
                    Get.to(NewInvoicesPage());
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
    );
  }
}
