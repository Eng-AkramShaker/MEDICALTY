// ignore_for_file: use_key_in_widget_constructors, unused_import, must_be_immutable, prefer_const_constructors

import 'package:carehealth/View/widget/textfield_screen/my_app_bar.dart';
import 'package:carehealth/View/widget/textfield_screen/my_textfield_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'create_pharmacy.dart';
import 'disease_reporting.dart';

class CreateLaboratoryPage extends StatelessWidget {
  TextEditingController idLaboratoryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String imagePath = 'assets/images/textfield';

  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create laboratory',
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
                  controller: idLaboratoryController,
                  validator: () {},
                  hintText: '#ID laboratory',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/path.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'laboratory Name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/user.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: addressController,
                  validator: () {},
                  hintText: 'address',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/location.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: phoneController,
                  validator: () {},
                  hintText: 'phone number',
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/phone.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: emailController,
                  validator: () {},
                  hintText: 'E-mail',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: websiteController,
                  validator: () {},
                  hintText: 'website',
                  keyboardType: TextInputType.url,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: passwordController,
                  validator: () {},
                  hintText: 'password',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                const SizedBox(height: 89.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(CreatePharmacyPage());
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
    );
  }
}
