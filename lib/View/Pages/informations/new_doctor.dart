// ignore_for_file: unused_import, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'new_experiences.dart';

class NewDoctorPage extends StatelessWidget {
  TextEditingController idDoctorController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController jobNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController obDescController = TextEditingController();
  TextEditingController aboutDocController = TextEditingController();
  TextEditingController profileDocController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController yearExperienceController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController workPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController workEmailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController NationalityController = TextEditingController();
  String imagePath = 'assets/images/textfield';

  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New doctor',
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
                  controller: idDoctorController,
                  validator: () {},
                  hintText: '#ID Doctor',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/path.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: userNameController,
                  validator: () {},
                  hintText: '@username',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/user.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: jobNumberController,
                  validator: () {},
                  hintText: 'Job number',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/person_up.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: fullNameController,
                  validator: () {},
                  hintText: 'Full name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/person_plus.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nationalIdController,
                  validator: () {},
                  hintText: 'National ID',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/user.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: obDescController,
                  validator: () {},
                  hintText: 'ob Description',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 4,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: aboutDocController,
                  validator: () {},
                  hintText: 'About the doctor',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 4,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: profileDocController,
                  validator: () {},
                  hintText: 'comprehensive profile doctors',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 6,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: dateController,
                  validator: () {},
                  hintText: 'date of birth',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/date.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: yearExperienceController,
                  validator: () {},
                  hintText: 'Years of Experience',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/star.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: experienceController,
                  validator: () {},
                  hintText: 'experience',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/exp.png',
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
                  suffixIcon: Image.asset(
                    '$imagePath/phone.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: workPhoneController,
                  validator: () {},
                  hintText: 'Work phone number',
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/phone.png',
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
                  controller: workEmailController,
                  validator: () {},
                  hintText: 'Work email',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: genderController,
                  validator: () {},
                  hintText: 'Gender',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nationalIdController,
                  validator: () {},
                  hintText: 'Nationality',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 115),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(NewExperiencesPage());
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
    );
  }
}
