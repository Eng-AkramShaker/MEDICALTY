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
import 'new_products_services.dart';

class NewRequestPage extends StatelessWidget {
  TextEditingController idRequestController = TextEditingController();
  TextEditingController selectionClientsController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController serviceDetailsController = TextEditingController();
  TextEditingController commentsController = TextEditingController();
  TextEditingController reservationTimeController = TextEditingController();
  TextEditingController chooseDateController = TextEditingController();
  TextEditingController selectionController2 = TextEditingController();
  TextEditingController startingTimeController = TextEditingController();
  TextEditingController endingTimeController = TextEditingController();
  TextEditingController supervisingController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Request',
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
                      controller: idRequestController,
                      validator: () {},
                      hintText: '#ID Request',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/id_section.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: selectionClientsController,
                      validator: () {},
                      hintText: 'selection of clients/patients',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: addressController,
                      validator: () {},
                      hintText: 'address of the request',
                      keyboardType: TextInputType.streetAddress,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/location.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: serviceDetailsController,
                      validator: () {},
                      hintText: 'Service details',
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
                      controller: commentsController,
                      validator: () {},
                      hintText: 'comments',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 4,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: reservationTimeController,
                      validator: () {},
                      hintText: 'Reservation times',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: chooseDateController,
                      validator: () {},
                      hintText: 'Choose the date',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/date.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: selectionController2,
                      validator: () {},
                      hintText: 'selection of clients/patients',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: OnBoardingTextFormField(
                            controller: startingTimeController,
                            validator: () {},
                            hintText: 'Starting time',
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
                            controller: endingTimeController,
                            validator: () {},
                            hintText: 'Ending time',
                            keyboardType: TextInputType.number,
                            obscureText: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: supervisingController,
                      validator: () {},
                      hintText: 'supervising physician',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: notesController,
                      validator: () {},
                      hintText: 'Notes',
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
                    Get.to(NewProductPage());
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
    );
  }
}
