// ignore_for_file: unused_import, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:Medicalty/controllers/informations/new_doctor_controller.dart';
import '../../../constatnt/color_app.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'my_date_time.dart';
import 'new_experiences.dart';

class NewDoctorPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewDoctorController>(
      init: NewDoctorController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New doctor',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Form(
              key: controller.formKey,
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
                    controller: controller.idDoctorController,
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
                    labelText: '#ID Doctor',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/path.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.userNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the UserName ';
                      }
                      if (value.length > 25) {
                        return 'UserName cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'UserName  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: '@username',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/user.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.jobNumberController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Job Number ';
                      }
                      if (value.length > 25) {
                        return 'Job Number cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Job Number  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Job number',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/person_up.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.fullNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Full Name ';
                      }
                      if (value.length > 25) {
                        return 'Full Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Full Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Full name',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/person_plus.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.nationalIdController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the National ID ';
                      }
                      if (value.length > 25) {
                        return 'National ID cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'National ID  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'National ID',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/user.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.obDescController,
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
                    labelText: 'ob Description',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.aboutDocController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the About The Doctor ';
                      }
                      if (value.length > 2500) {
                        return 'About The Doctor cannot be longer than 2500 characters';
                      }
                      if (value.length < 2) {
                        return 'About The Doctor  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'About the doctor',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.profileDocController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Profile Doctor ';
                      }
                      if (value.length > 2500) {
                        return 'Profile Doctor cannot be longer than 2500 characters';
                      }
                      if (value.length < 2) {
                        return 'Profile Doctor  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'comprehensive profile doctors',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    maxLines: 6,
                  ),
                  const SizedBox(height: 15.0),
                  DateTimeFormField(
                    label: 'date of birth',
                    image: '$imagePath/date.png',
                    initialValue: controller.selectedDateOfBirth,
                    onChanged: (DateTime? value) {
                      controller.selectedDateOfBirth = value;

                    },
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.yearExperienceController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Years Of Experience ';
                      }
                      if (value.length > 25) {
                        return 'Years Of Experience cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Years Of Experience  must have at least 1 characters';
                      }
                      return null;
                    },
                    labelText: 'Years of Experience',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/star.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.experienceController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Experience ';
                      }
                      if (value.length > 25) {
                        return 'Experience cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Experience  must have at least 1 characters';
                      }
                      return null;
                    },
                    labelText: 'experience',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/exp.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Phone ';
                      }
                      if (value.length > 25) {
                        return 'Phone cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Phone  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'phone number',
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/phone.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.workPhoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Phone ';
                      }
                      if (value.length > 25) {
                        return 'Phone cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Phone  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Work phone number',
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/phone.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (value!.length < 12) {
                        return 'Email must have at least 2 characters';
                      }
                      if (!value.contains('@')) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                    labelText: 'E-mail',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.workEmailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (value!.length < 12) {
                        return 'Email must have at least 2 characters';
                      }
                      if (!value.contains('@')) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                    labelText: 'Work email',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 15.0),
                  MyDropDownMenu(
                    text: 'Gender',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.genderValue = val!;
                      }
                  ),
                  const SizedBox(height: 15.0),
                  MyDropDownMenu(
                      text: 'Nationality',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.nationalityValue = val!;
                      }
                  ),
                  const SizedBox(height: 115),
                  OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(NewExperiencesPage());

                      }else{

                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }
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
      ),
    ));
  }
}
