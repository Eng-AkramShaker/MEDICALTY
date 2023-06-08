// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'appointment_booking.dart';

class RegistrationPatientPage extends StatelessWidget {
  TextEditingController idPatientController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController fileNoController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController bloodTypeController = TextEditingController();
  TextEditingController nameDiseaseController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'registration patient',
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
                  controller: idPatientController,
                  validator: () {},
                  hintText: '#ID patient',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/path.png',
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
                    '$imagePath/user.png',
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
                    '$imagePath/person_up.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: fileNoController,
                  validator: () {},
                  hintText: 'File No.',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/person_plus.png',
                    height: 1,
                  ),
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
                  controller: emailController,
                  validator: () {},
                  hintText: 'Patient Email',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: addressController,
                  validator: () {},
                  hintText: 'home adress',
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/location.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: heightController,
                  validator: () {},
                  hintText: 'patient\'s height',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: weightController,
                  validator: () {},
                  hintText: 'Patient weight',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: bloodTypeController,
                  validator: () {},
                  hintText: 'blood type',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameDiseaseController,
                  validator: () {},
                  hintText: 'Chose name of the disease',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: descController,
                  validator: () {},
                  hintText: 'Description of the disease',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 3,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: genderController,
                  validator: () {},
                  hintText: 'geneder',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nationalityController,
                  validator: () {},
                  hintText: 'Nationality',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                const SizedBox(height: 92),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(AppointmentBookingPage());
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
    );
  }
}
