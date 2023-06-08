// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:carehealth/View/widget/textfield_screen/my_app_bar.dart';
import 'package:carehealth/View/widget/textfield_screen/my_textfield_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_insurance_company.dart';

class CreateNewSectionPage extends StatelessWidget {
  TextEditingController idSectionController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController descController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create a new section',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
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
                const SizedBox(height: 3.0),
                OnBoardingTextWidget(
                    text: 'Uploade image',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorApp.primaryColor),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: idSectionController,
                  validator: () {},
                  hintText: '#Id Section',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/id_section.png',
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                OnBoardingTextFormField(
                  controller: departmentController,
                  validator: () {},
                  hintText: 'Department Name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/depname.png',
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                OnBoardingTextFormField(
                  controller: descController,
                  validator: () {},
                  hintText: 'description',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 4,
                ),
                const SizedBox(height: 69.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(CreateInsuranceCompanyPage());
                  },
                  text: 'Create Section',
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
