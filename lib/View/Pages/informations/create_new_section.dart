// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/new_section_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_insurance_company.dart';

class CreateNewSectionPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewSectionController>(
      init: NewSectionController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create a new section',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Form(
              key: controller.formKey,
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
                    controller: controller.idSectionController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Id Section ';
                      }
                      if (value.length > 25) {
                        return 'Id Section cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Id Section  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: '#Id Section',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/id_section.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  OnBoardingTextFormField(
                    controller:  controller.departmentController,
                    validator: (value) {

                      if (value == null || value.isEmpty) {
                        return 'Please enter the Department Name ';
                      }
                      if (value.length > 25) {
                        return 'Department Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Department Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Department Name',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/depname.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  OnBoardingTextFormField(
                    controller:  controller.descController,
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
                    maxLines: 4,
                  ),
                  const SizedBox(height: 69.0),
                  OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(CreateInsuranceCompanyPage());
                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

                    },
                    text: 'Create Section',
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
