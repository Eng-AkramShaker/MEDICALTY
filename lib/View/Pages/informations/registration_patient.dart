// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/registration_patient_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'appointment_booking.dart';
import 'my_date_time.dart';

class RegistrationPatientPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationPatientController>(
      init: RegistrationPatientController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'registration patient',
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
                    controller: controller.idPatientController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Id ';
                      }
                      if (value.length > 25) {
                        return 'Id cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Id  must have at least 2 characters';
                      }
                      return null;
                    },

                    labelText: '#ID patient',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/path.png',
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
                      '$imagePath/user.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.userNameController,
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
                    suffixIcon: Image.asset(
                      '$imagePath/person_up.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.fileNoController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the File  ';
                      }
                      if (value.length > 25) {
                        return 'File cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'File  must have at least 2 characters';
                      }
                      return null;
                    },

                    labelText: 'File No.',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/person_plus.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  DateTimeFormField(
                    label: 'Date of birth',
                    image: '$imagePath/date.png',
                    initialValue: controller.selectedDateOfBirth,
                    onChanged: (DateTime? value) {
                      controller.selectedDateOfBirth = value;

                    },
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
                    labelText: 'Patient Email',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: Icon(Icons.email_outlined),
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
                    labelText: 'home adress',
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/location.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.heightController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Height ';
                      }
                      if (value.length > 25) {
                        return 'Height cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Height must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'patient\'s height',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.weightController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Weight ';
                      }
                      if (value.length > 25) {
                        return 'Weight cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Weight  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Patient weight',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15.0),

                  MyDropDownMenu(
                    text: 'blood type',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.bloodTypeValue = val!;
                      }
                  ),

                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.nameDiseaseController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Name of Disease ';
                      }
                      if (value.length > 25) {
                        return 'Name of Disease cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Name of Disease  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Chose name of the disease',
                    keyboardType: TextInputType.name,
                    obscureText: false,
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
                    labelText: 'Description of the disease',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    maxLines: 3,
                  ),
                  const SizedBox(height: 15.0),
                  MyDropDownMenu(
                      text: 'Gender',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.bloodTypeValue = val!;
                      }
                  ),
                  const SizedBox(height: 15.0),
                  MyDropDownMenu(
                      text: 'Nationality',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.bloodTypeValue = val!;
                      }
                  ),
                  const SizedBox(height: 92),
                  OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(AppointmentBookingPage());


                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }
                    },
                    text: 'Create Patient',
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
