// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:carehealth/View/Pages/informations/registration_patient.dart';
import 'package:carehealth/View/widget/textfield_screen/my_app_bar.dart';
import 'package:carehealth/View/widget/textfield_screen/my_textfield_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';

class NewExperiencesPage extends StatelessWidget {
  TextEditingController idExperiencesController = TextEditingController();
  TextEditingController nameExpController = TextEditingController();
  TextEditingController namePlaceController = TextEditingController();
  TextEditingController workPlaceController = TextEditingController();
  TextEditingController beginningWorkController = TextEditingController();
  TextEditingController workFinishedController = TextEditingController();
  TextEditingController hisWorkController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Experiences',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
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
                  controller: idExperiencesController,
                  validator: () {},
                  hintText: '#ID Experiences',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/path.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameExpController,
                  validator: () {},
                  hintText: 'name of the experience',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/xmlid.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: namePlaceController,
                  validator: () {},
                  hintText: 'name of the place',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/xmlid2.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: workPlaceController,
                  validator: () {},
                  hintText: 'Work place country',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/location2.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: beginningWorkController,
                  validator: () {},
                  hintText: 'Beginning work',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/date.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: workFinishedController,
                  validator: () {},
                  hintText: 'work is finished',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/date.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: hisWorkController,
                  validator: () {},
                  hintText: 'Is he on top of his work.',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 64),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(RegistrationPatientPage());
                  },
                  text: 'Create Experiences',
                  size: 22,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
