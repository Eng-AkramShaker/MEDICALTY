// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/appointment_booking_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/my_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'disease_reporting.dart';
import 'my_date_time.dart';

class AppointmentBookingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentBookingController>(
      init: AppointmentBookingController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Appointment booking',
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
                      MyDropDownMenu(
                        text:'doctor is selected',
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.doctorSelectedValue = val!;
                          }
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
                      MyTextFormField(
                        controller: controller.jobNumerController,
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
                        labelText: 'Doctor\'s job number - Auto full',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.doctorNameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Doctors Name ';
                          }
                          if (value.length > 25) {
                            return 'Doctors Name cannot be longer than 25 characters';
                          }
                          if (value.length < 2) {
                            return 'Doctors Name  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'doctor\'s name - Auto full',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                      const SizedBox(height: 15.0),
                      MyDropDownMenu(
                          text:'assigned to the patient',
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.assignedSelectedValue = val!;
                          }
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
                        labelText: 'Patient name - Auto Full',
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
                      DateTimeFormField(
                        label: 'Reservation time',
                        image: '$imagePath/date.png',
                        initialValue: controller.selectedDateReservation,
                        onChanged: (DateTime? value) {
                          controller.selectedDateReservation = value;
                        },
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child:      DateTimeFormField(
                              label: 'Start time',
                              image: '$imagePath/date.png',
                              initialValue: controller.selectedStartTime,
                              onChanged: (DateTime? value) {
                                controller.selectedDateReservation = value;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: DateTimeFormField(
                              label: 'End time',
                              image: '$imagePath/date.png',
                              initialValue: controller.selectedEndTime,
                              onChanged: (DateTime? value) {
                                controller.selectedDateReservation = value;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
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
                        maxLines: 5,
                      ),
                      const SizedBox(height: 46),
                      OnBoardingButton(
                        onPressed: () {
                          if(controller.formKey.currentState!.validate()){
                            controller.formKey.currentState!.save();

                            Get.to(DiseaseReportingPage());
                          }else{
                            showDialog(context: context, builder: (_) => AlertDialog(
                              title: Text('Please Enter all Fields'),
                            ));
                          }
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
      ),
    ));
  }
}
