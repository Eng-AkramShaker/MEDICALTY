// ignore_for_file: use_key_in_widget_constructors, unused_import, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/disease_reporting_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/my_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_laboratory.dart';
import 'new_invoices.dart';

class DiseaseReportingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiseaseReportingController>(
        init: DiseaseReportingController(),
        builder: (controller) => MyTextFieldContainer(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: MyAppBar(
                  title: 'Disease reporting',
                ),
                body: SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
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
                                controller: controller.idDieasesController,
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
                                labelText: 'ID Disease',
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                suffixIcon: Image.asset(
                                  '$imagePath/path.png',
                                  height: 1,
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              OnBoardingTextFormField(
                                controller: controller.nameDiseaseController,
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
                                labelText: 'the name of the disease',
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                suffixIcon: Image.asset(
                                  '$imagePath/user.png',
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
                                labelText: 'Description of the disease',
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                maxLines: 3,
                              ),
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
                                child: OnBoardingTextWidget(
                                  text: 'Results image',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        const SizedBox(height: 17),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Color(0xff323C47),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Spacer(),
                                                Icon(
                                                  Icons.file_open_outlined,
                                                  color: Colors.white,
                                                ),
                                                OnBoardingTextWidget(
                                                    text: 'Attach File',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white)
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.camera_alt,
                                                  color: Colors.white,
                                                ),
                                                OnBoardingTextWidget(
                                                    text: 'Take a photo',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.videocam,
                                                  color: Colors.white,
                                                ),
                                                OnBoardingTextWidget(
                                                    text: 'Take a video',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.photo_library,
                                                  color: Colors.white,
                                                ),
                                                OnBoardingTextWidget(
                                                    text:
                                                        'Choose photos and videos',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.insert_drive_file,
                                                  color: Colors.white,
                                                ),
                                                OnBoardingTextWidget(
                                                    text: 'Choose documents',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ],
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xff7CB041),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'CANCEL',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width:
                                      100, // adjust the width to your desired size
                                  height:
                                      100, // adjust the height to your desired size
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.lightGreen,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    100, // adjust the width to your desired size
                                height:
                                    100, // adjust the height to your desired size
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width:
                                    100, // adjust the width to your desired size
                                height:
                                    100, // adjust the height to your desired size
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 17),
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
                                child: OnBoardingTextWidget(
                                  text: 'video',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        const SizedBox(height: 17),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:
                                    100, // adjust the width to your desired size
                                height:
                                    100, // adjust the height to your desired size
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.lightGreen,
                                    size: 40,
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    100, // adjust the width to your desired size
                                height:
                                    100, // adjust the height to your desired size
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width:
                                    100, // adjust the width to your desired size
                                height:
                                    100, // adjust the height to your desired size
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 14),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21.0,
                          ),
                          child: OnBoardingButton(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                controller.formKey.currentState!.save();
                                Get.to(CreateLaboratoryPage());
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title:
                                              Text('Please Enter all Fields'),
                                        ));
                              }
                            },
                            text: 'Create Disease',
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
