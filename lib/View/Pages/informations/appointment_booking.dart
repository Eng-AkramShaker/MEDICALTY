// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:Medicalty/View/widget/textfield_screen/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'disease_reporting.dart';

class AppointmentBookingPage extends StatelessWidget {
  TextEditingController doctorSelectedController = TextEditingController();
  TextEditingController jobNumerController = TextEditingController();
  TextEditingController doctorNameController = TextEditingController();
  TextEditingController assignedController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController reservationTimeController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController descController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Appointment booking',
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
                    OnBoardingTextFormField(
                      controller: doctorSelectedController,
                      validator: () {},
                      hintText: 'doctor is selected',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
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
                      controller: jobNumerController,
                      validator: () {},
                      hintText: 'Doctor\'s job number - Auto full',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: doctorNameController,
                      validator: () {},
                      hintText: 'doctor\'s name - Auto full',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'assigned to the patient',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
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
                      controller: nameController,
                      validator: () {},
                      hintText: 'Patient name - Auto Full',
                      keyboardType: TextInputType.name,
                      obscureText: false,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OnBoardingTextWidget(
                            text: 'Multiple booking',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          Icon(
                            Icons.add,
                            color: ColorApp.greenColor,
                            size: 35,
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 21.0, vertical: 31.0),
                child: Column(
                  children: [
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: assignedController,
                      validator: () {},
                      hintText: 'Reservation time',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/date.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: OnBoardingTextFormField(
                            controller: startTimeController,
                            validator: () {},
                            hintText: 'Start time',
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
                            controller: endTimeController,
                            validator: () {},
                            hintText: 'End time',
                            keyboardType: TextInputType.number,
                            obscureText: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: descController,
                      validator: () {},
                      hintText: 'Description of the disease',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 5,
                    ),
                    const SizedBox(height: 46),
                    OnBoardingButton(
                      onPressed: () {
                        Get.to(DiseaseReportingPage());
                      },
                      text: 'Create Booking',
                      size: 22,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
