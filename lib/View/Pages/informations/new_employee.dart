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
import 'new_request.dart';

class NewEmployeePage extends StatelessWidget {
  TextEditingController idEmployeeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController hourlySalaryController = TextEditingController();
  TextEditingController totalSalaryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController belongsController = TextEditingController();
  TextEditingController workingTimeController = TextEditingController();

  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New employee',
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
                      controller: idEmployeeController,
                      validator: () {},
                      hintText: '#ID employee',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/id_section.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Employee Name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: userNameController,
                      validator: () {},
                      hintText: '@username',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: hourlySalaryController,
                      validator: () {},
                      hintText: 'Hourly salary',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/value.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: totalSalaryController,
                      validator: () {},
                      hintText: 'Total salary',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: dateController,
                      validator: () {},
                      hintText: 'date of birth',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/date.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: belongsController,
                      validator: () {},
                      hintText: 'belongs to',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                          OnBoardingTextWidget(
                            text: 'Multiple working',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          Icon(
                            Icons.add,
                            color: ColorApp.greenColor,
                            size: 35,
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 21.0, vertical: 15.0),
                child: Column(
                  children: [
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Working time',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                  ],
                ),
              ),
              const SizedBox(height: 106),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                ),
                child: OnBoardingButton(
                  onPressed: () {
                    Get.to(NewRequestPage());
                  },
                  text: 'Create employee',
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
