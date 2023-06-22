// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/new_employee_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'my_date_time.dart';
import 'new_request.dart';

class NewEmployeePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewEmployeeController>(
      init: NewEmployeeController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New employee',
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
                        controller: controller.idEmployeeController,
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
                        labelText: '#ID employee',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/id_section.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller:  controller.nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Name ';
                          }
                          if (value.length > 25) {
                            return 'Name cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Name  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Employee Name',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller:  controller.userNameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Username ';
                          }
                          if (value.length > 25) {
                            return 'Username cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Username  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: '@username',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller:  controller.hourlySalaryController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Hourly Salary ';
                          }
                          if (value.length > 25) {
                            return 'Hourly Salary cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Hourly Salary  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Hourly salary',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/value.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      OnBoardingTextFormField(
                        controller:  controller.totalSalaryController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Total Salary ';
                          }
                          if (value.length > 25) {
                            return 'Total Salary cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Total Salary  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Total salary',
                        keyboardType: TextInputType.number,
                        obscureText: false,
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
                        text: 'belongs to',
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.belongsTo = val!;
                          }
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
                      MyDropDownMenu(
                          text: 'Working Time',
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.workingTime = val!;
                          }
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
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(NewRequestPage());
                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

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
      ),
    ));
  }
}
