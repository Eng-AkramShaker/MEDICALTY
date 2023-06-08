// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'adding_products_pharmacy.dart';

class CreatePharmacyPage extends StatelessWidget {
  TextEditingController idPharmacyController = TextEditingController();
  TextEditingController namePharmacyController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController phoneNumber2Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController officalEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtNameController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

  String imagePath = 'assets/images/textfield';

  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create Pharmacy',
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
                const SizedBox(
                  height: 15.0,
                ),
                OnBoardingTextFormField(
                  controller: idPharmacyController,
                  validator: () {},
                  hintText: '#ID Pharmacy',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/path.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: namePharmacyController,
                  validator: () {},
                  hintText: 'name of the pharmacy',
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
                  controller: phoneNumberController,
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
                  controller: phoneNumber2Controller,
                  validator: () {},
                  hintText: 'phone number 1',
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
                  controller: officalEmailController,
                  validator: () {},
                  hintText: 'official e-mail',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: countryController,
                  validator: () {},
                  hintText: 'Country',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/center_name.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: addressController,
                  validator: () {},
                  hintText: 'Address',
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/location.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: address2Controller,
                  validator: () {},
                  hintText: 'Address 1',
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: stateController,
                  validator: () {},
                  hintText: 'State name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/country.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: districtNameController,
                  validator: () {},
                  hintText: 'District name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/country.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: postalCodeController,
                  validator: () {},
                  hintText: 'Postal code',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/postal.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextWidget(
                  text: 'Social media links for the cent',
                  fontWeight: FontWeight.w500,
                  color: ColorApp.primaryColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: websiteController,
                  validator: () {},
                  hintText: 'Website',
                  keyboardType: TextInputType.url,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/url.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: facebookController,
                  validator: () {},
                  hintText: 'Facebook',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/facebook.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: instagramController,
                  validator: () {},
                  hintText: 'Instagram',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/instagram.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: twitterController,
                  validator: () {},
                  hintText: 'Twitter',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/twitter.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: snapchatController,
                  validator: () {},
                  hintText: 'Snapchat',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/snapchat.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: youtubeController,
                  validator: () {},
                  hintText: 'YouTube',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/youtube.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 33.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(ProductsPharamcyPage());
                  },
                  text: 'SAVE',
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
