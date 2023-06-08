// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:carehealth/View/widget/textfield_screen/my_app_bar.dart';
import 'package:carehealth/View/widget/textfield_screen/my_textfield_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_clients.dart';

class CreateInsuranceCompanyPage extends StatelessWidget {
  TextEditingController idInsuranceController = TextEditingController();
  TextEditingController nameInsuranceController = TextEditingController();
  TextEditingController descInsuranceController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController secondPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController officalEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController secondAddressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController postalController = TextEditingController();
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
          title: 'Create Insurance company',
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
                  controller: idInsuranceController,
                  validator: () {},
                  hintText: '#ID Insurance',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/id_section.png',
                    height: 1,
                  ),

                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameInsuranceController,
                  validator: () {},
                  hintText: 'name of the insurance company',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/center_name.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: descInsuranceController,
                  validator: () {},
                  hintText: 'Description of the insurance company',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 4,
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
                  controller: secondPhoneController,
                  validator: () {},
                  hintText: 'phone number 1',
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
                  suffixIcon: Image.asset('$imagePath/country.png',
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
                  suffixIcon: Image.asset('$imagePath/location.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: secondAddressController,
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
                  suffixIcon: Image.asset('$imagePath/country.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: districtController,
                  validator: () {},
                  hintText: 'District name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/state.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: postalController,
                  validator: () {},
                  hintText: 'Postal code',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/postal.png',
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
                  suffixIcon: Image.asset('$imagePath/url.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: facebookController,
                  validator: () {},
                  hintText: 'Facebook',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/facebook.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: instagramController,
                  validator: () {},
                  hintText: 'Instagram',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/instagram.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: twitterController,
                  validator: () {},
                  hintText: 'Twitter',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/twitter.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: snapchatController,
                  validator: () {},
                  hintText: 'Snapchat',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/snapchat.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: youtubeController,
                  validator: () {},
                  hintText: 'YouTube',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: Image.asset('$imagePath/youtube.png',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 33.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(CreateClientsPage());
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
