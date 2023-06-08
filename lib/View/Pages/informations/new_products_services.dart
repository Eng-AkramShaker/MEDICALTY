// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:carehealth/View/widget/textfield_screen/my_app_bar.dart';
import 'package:carehealth/View/widget/textfield_screen/my_textfield_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'new_doctor.dart';

class NewProductPage extends StatelessWidget {
  TextEditingController idProductController = TextEditingController();
  TextEditingController productTypeController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescController = TextEditingController();
  TextEditingController unitPriceController = TextEditingController();
  TextEditingController unitNumberController = TextEditingController();

  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New products / services',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  controller: idProductController,
                  validator: () {},
                  hintText: '#ID products',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/id_section.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: productTypeController,
                  validator: () {},
                  hintText: 'Product type',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: productNameController,
                  validator: () {},
                  hintText: 'product name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: productDescController,
                  validator: () {},
                  hintText: 'Product Description',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 6,
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: OnBoardingTextFormField(
                        controller: unitPriceController,
                        validator: () {},
                        hintText: 'unit price \$',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 5,
                      child: OnBoardingTextFormField(
                        controller: unitNumberController,
                        validator: () {},
                        hintText: 'Unit number',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 105),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(NewDoctorPage());
                  },
                  text: 'Create Product',
                  size: 22,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
