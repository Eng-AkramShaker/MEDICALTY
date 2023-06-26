// ignore_for_file: use_key_in_widget_constructors, unused_import, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/create_laboratory_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/my_text_form_field.dart';
import 'create_pharmacy.dart';
import 'disease_reporting.dart';

class CreateLaboratoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateLaboratoryController>(
        init: CreateLaboratoryController(),
        builder: (controller) => MyTextFieldContainer(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: MyAppBar(
                  title: 'Create laboratory',
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 21.0, vertical: 31.0),
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
                          MyTextFormField(
                            controller: controller.idLaboratoryController,
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
                            labelText: '#ID laboratory',
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            suffixIcon: Image.asset(
                              '$imagePath/path.png',
                              height: 1,
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          MyTextFormField(
                            controller: controller.nameController,
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
                            labelText: 'laboratory Name',
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            suffixIcon: Image.asset(
                              '$imagePath/user.png',
                              height: 1,
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          MyTextFormField(
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
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                            suffixIcon: Image.asset(
                              '$imagePath/location.png',
                              height: 1,
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          MyTextFormField(
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
                          MyTextFormField(
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
                          MyTextFormField(
                            controller: controller.websiteController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the Website ';
                              }
                              if (value.length > 25) {
                                return 'Website cannot be longer than 25 characters';
                              }
                              if (value.length < 2) {
                                return 'Website  must have at least 2 characters';
                              }
                              return null;
                            },
                            labelText: 'website',
                            keyboardType: TextInputType.url,
                            obscureText: false,
                          ),
                          const SizedBox(height: 15.0),
                          MyTextFormField(
                            controller: controller.passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the Password ';
                              }
                              if (value.length > 25) {
                                return 'Password cannot be longer than 25 characters';
                              }
                              if (value.length < 2) {
                                return 'Password  must have at least 2 characters';
                              }
                              return null;
                            },
                            labelText: 'password',
                            keyboardType: TextInputType.name,
                            obscureText: controller.isVisibility,
                            maxLines: 1,
                            suffixIcon: InkWell(
                                onTap: () {
                                  controller.visibility();
                                },
                                child: Icon(controller.isVisibility
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                          ),
                          const SizedBox(height: 89.0),
                          OnBoardingButton(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                controller.formKey.currentState!.save();
                                //
                                controller.registerLaboratory();
                                //
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title:
                                              Text('Please Enter all Fields'),
                                        ));
                              }
                            },
                            text: 'Create laboratory',
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
