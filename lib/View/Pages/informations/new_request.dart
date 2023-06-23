// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/new_request_controller.dart';
import '../../../utils/information_image.dart';
import '../../../view/widget/textfield_screen/onboarding_text_widget.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'my_date_time.dart';
import 'new_products_services.dart';

class NewRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewRequestController>(
        init: NewRequestController(),
        builder: (controller) => MyTextFieldContainer(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: MyAppBar(
                  title: 'New Request',
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
                                controller: controller.idRequestController,
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
                                labelText: '#ID Request',
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                suffixIcon: Image.asset(
                                  '$imagePath/id_section.png',
                                  height: 1,
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              MyDropDownMenu(
                                  text: 'selection of clients/patients',
                                  myList: controller.items,
                                  onChanged: (val) {
                                    controller.selectionClients = val!;
                                  }),
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
                                labelText: 'address of the request',
                                keyboardType: TextInputType.streetAddress,
                                obscureText: false,
                                suffixIcon: Image.asset(
                                  '$imagePath/location.png',
                                  height: 1,
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              OnBoardingTextFormField(
                                controller: controller.serviceDetailsController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the Service Details ';
                                  }
                                  if (value.length > 2500) {
                                    return 'Service Details cannot be longer than 2500 characters';
                                  }
                                  if (value.length < 2) {
                                    return 'Service Details  must have at least 2 characters';
                                  }
                                  return null;
                                },
                                labelText: 'Service details',
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                maxLines: 6,
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
                                // alignment: Alignment.centerLeft,
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnBoardingTextWidget(
                                  text: 'appointment,booking schedule',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                Image.asset(
                                  '$imagePath/date_white.png',
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
                                controller: controller.commentsController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the comments ';
                                  }
                                  if (value.length > 2500) {
                                    return 'comments cannot be longer than 2500 characters';
                                  }
                                  if (value.length < 2) {
                                    return 'comments  must have at least 2 characters';
                                  }
                                  return null;
                                },
                                labelText: 'comments',
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                maxLines: 4,
                              ),
                              const SizedBox(height: 15.0),
                              MyDropDownMenu(
                                  text: 'Reservation times',
                                  myList: controller.items,
                                  onChanged: (val) {
                                    controller.reservationTimes = val!;
                                  }),
                              const SizedBox(height: 15.0),
                              DateTimeFormField(
                                label: 'Chose the date',
                                image: '$imagePath/date.png',
                                initialValue: controller.selectedDateTime,
                                onChanged: (DateTime? value) {
                                  controller.selectedDateTime = value;
                                },
                              ),
                              const SizedBox(height: 15.0),
                              MyDropDownMenu(
                                  text: 'selection of clients/patients',
                                  myList: controller.items,
                                  onChanged: (val) {
                                    controller.selectionClients2 = val!;
                                  }),
                              const SizedBox(height: 15.0),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: DateTimeFormField(
                                      label: 'Starting time',
                                      image: '$imagePath/date.png',
                                      initialValue: controller.startingTime,
                                      onChanged: (DateTime? value) {
                                        controller.selectedDateTime = value;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: DateTimeFormField(
                                      label: 'Ending time',
                                      image: '$imagePath/date.png',
                                      initialValue: controller.endingTime,
                                      onChanged: (DateTime? value) {
                                        controller.selectedDateTime = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              MyDropDownMenu(
                                  text: 'supervising physician',
                                  myList: controller.items,
                                  onChanged: (val) {
                                    controller.supervisingPhysician = val!;
                                  }),
                              const SizedBox(height: 15.0),
                              OnBoardingTextFormField(
                                controller: controller.notesController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the Notes ';
                                  }
                                  if (value.length > 2500) {
                                    return 'Notes cannot be longer than 2500 characters';
                                  }
                                  if (value.length < 2) {
                                    return 'Notes  must have at least 2 characters';
                                  }
                                  return null;
                                },
                                labelText: 'Notes',
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                maxLines: 6,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 47),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21.0,
                          ),
                          child: OnBoardingButton(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                controller.formKey.currentState!.save();
                                Get.to(NewProductPage());
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title:
                                              Text('Please Enter all Fields'),
                                        ));
                              }
                            },
                            text: 'Create Request',
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
