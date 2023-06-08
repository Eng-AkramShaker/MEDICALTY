// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'new_expenses.dart';

class CreateClientsPage extends StatelessWidget {
  TextEditingController idClientController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController mainFirstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController nameCompanyController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mainPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController attributedController = TextEditingController();
  TextEditingController mainEmailController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
  TextEditingController secondCustomerAddressController =
      TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController interruptController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  String imagePath = 'assets/images/textfield';
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create Clients',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
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
                  controller: idClientController,
                  validator: () {},
                  hintText: '#ID Client',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/id_section.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: OnBoardingTextFormField(
                        controller: mainFirstNameController,
                        validator: () {},
                        hintText: 'Main',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 7,
                      child: OnBoardingTextFormField(
                        controller: firstNameController,
                        validator: () {},
                        hintText: 'first name',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/path.png',
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: secondNameController,
                  validator: () {},
                  hintText: 'second and last name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/path.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameCompanyController,
                  validator: () {},
                  hintText: 'name of the client\'s company',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/country.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: OnBoardingTextFormField(
                        controller: mainPhoneController,
                        validator: () {},
                        hintText: 'Main',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 7,
                      child: OnBoardingTextFormField(
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
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: OnBoardingTextFormField(
                        controller: mainEmailController,
                        validator: () {},
                        hintText: 'Main',
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 7,
                      child: OnBoardingTextFormField(
                        controller: emailController,
                        validator: () {},
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        suffixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: attributedController,
                  validator: () {},
                  hintText: 'attributed to',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: customerAddressController,
                  validator: () {},
                  hintText: 'Customer address',
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/location.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: secondCustomerAddressController,
                  validator: () {},
                  hintText: 'Customer address 1',
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: cityController,
                  validator: () {},
                  hintText: 'City',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/country.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: interruptController,
                  validator: () {},
                  hintText: 'Interrupt',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/inter.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: zipCodeController,
                  validator: () {},
                  hintText: 'ZIP code',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/postal.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: countryController,
                  validator: () {},
                  hintText: 'Country',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/inter.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 61.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(NewExpensesPage());
                  },
                  text: 'Create Client',
                  size: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
