// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, avoid_print

import 'package:Medicalty/View/widget/textfield_screen/onboarding_text_widget.dart';
import 'package:Medicalty/model/create_center/center_body_model.dart';
import 'package:Medicalty/view/pages/accounts/login_page.dart';
import 'package:Medicalty/view/widget/textfield_screen/my_app_bar.dart';
import 'package:Medicalty/view/widget/textfield_screen/my_textfield_container.dart';
import 'package:Medicalty/view/widget/textfield_screen/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/center_information_controller.dart';
import '../../../utils/information_image.dart';

class CenterInformationPage extends StatelessWidget {
  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CenterInformationController>(
      init: CenterInformationController(),
      builder: (controller) => MyTextFieldContainer(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: MyAppBar(
            title: 'Center Information',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
              child: Column(
                children: [
                  Form(
                      key: controller.formKey,
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
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.name,
                            validate: controller.validateInput,
                            hintText: ' Enter the Name center',
                            labelText: 'Name center',
                            suffixIcon: Icon(Icons.person_2_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.username,
                            validate: controller.validateInput,
                            hintText: ' Enter the username',
                            labelText: 'Username',
                            suffixIcon: Icon(Icons.person_2_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.emailAddress,
                            controller: controller.email,
                            validate: controller.validateEmail,
                            hintText: ' Enter the email',
                            labelText: 'E-mail',
                            suffixIcon: Icon(Icons.email_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.visiblePassword,
                            controller: controller.password,
                            validate: controller.validatePassword,
                            hintText: ' Enter the password',
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.password_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.country,
                            validate: controller.validateInput,
                            hintText: ' Enter the country',
                            labelText: 'Country',
                            suffixIcon: Icon(Icons.location_city_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.subscriptionType,
                            validate: controller.validateInput,
                            hintText: ' Enter the subscription_type',
                            labelText: 'Subscription_type',
                            suffixIcon: Icon(Icons.av_timer_rounded),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.subscriptionPeriod,
                            validate: controller.validateInput,
                            hintText: ' Enter the subscription_period',
                            labelText: 'Subscription_period',
                            suffixIcon: Icon(Icons.av_timer_rounded),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.emailAddress,
                            controller: controller.formalEmail,
                            validate: controller.validateEmail,
                            hintText: ' Enter the formal_email',
                            labelText: 'Formal_email',
                            suffixIcon: Icon(Icons.email_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.phone,
                            controller: controller.phone,
                            validate: controller.validateInput,
                            hintText: ' Enter the phone',
                            labelText: 'Phone',
                            suffixIcon: Icon(Icons.phone),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.phone,
                            controller: controller.formalPhone,
                            validate: controller.validateInput,
                            hintText: ' Enter the formal_phone',
                            labelText: 'Formal_phone',
                            suffixIcon: Icon(Icons.phone),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.url,
                            controller: controller.website,
                            validate: controller.validateWebAddress,
                            hintText: ' Enter the website',
                            labelText: 'Website',
                            suffixIcon: Icon(Icons.web),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.streetAddress,
                            controller: controller.address1,
                            validate: controller.validateInput,
                            hintText: ' Enter the address1',
                            labelText: 'Address1',
                            suffixIcon: Icon(Icons.location_city_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.streetAddress,
                            controller: controller.address2,
                            validate: controller.validateInput,
                            hintText: ' Enter the address2',
                            labelText: 'Address2',
                            suffixIcon: Icon(Icons.location_city_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.state,
                            validate: controller.validateInput,
                            hintText: ' Enter the state',
                            labelText: 'State',
                            suffixIcon: Icon(Icons.location_city_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.name,
                            controller: controller.province,
                            validate: controller.validateInput,
                            hintText: ' Enter the province',
                            labelText: 'Province',
                            suffixIcon: Icon(Icons.location_city_outlined),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.number,
                            controller: controller.zipCode,
                            validate: controller.validateInput,
                            hintText: ' Enter the zip_code',
                            labelText: 'zip_code',
                            suffixIcon: Icon(Icons.post_add_outlined),
                          ),
                           const SizedBox(height: 15.0),
                          OnBoardingTextWidget(
                            text: 'Social media links for the center',
                            fontWeight: FontWeight.w500,
                            color: ColorApp.primaryColor,
                            fontSize: 16,
                          ),
                          const SizedBox(height: 15.0),
                          
                          TextFormFieldWidget(
                            keyboardType: TextInputType.url,
                            controller: controller.facebook,
                            validate: controller.validateWebAddress,
                            hintText: ' Enter the your facebook',
                            labelText: 'Facebook',
                            suffixIcon: Icon(Icons.facebook),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.url,
                            controller: controller.instagram,
                            validate: controller.validateWebAddress,
                            hintText: ' Enter the your instagram',
                            labelText: 'Instagram',
                            suffixIcon: Image.asset(
                              '$imagePath/instagram.png',
                              height: 1,
                            ),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.url,
                            controller: controller.twitter,
                            validate: controller.validateWebAddress,
                            hintText: ' Enter the your twitter',
                            labelText: 'Twitter',
                           suffixIcon: Image.asset(
                              '$imagePath/twitter.png',
                              height: 1,
                            ),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.url,
                            controller: controller.snapchat,
                            validate: controller.validateWebAddress,
                            hintText: ' Enter the your snapchat',
                            labelText: 'Snapchat',
                             suffixIcon: Image.asset(
                              '$imagePath/snapchat.png',
                              height: 1,
                            ),
                          ),
                          TextFormFieldWidget(
                            keyboardType: TextInputType.url,
                            controller: controller.youtube,
                            validate: controller.validateWebAddress,
                            hintText: ' Enter the your youtube',
                            labelText: 'Youtube',
                            suffixIcon: Image.asset(
                              '$imagePath/youtube.png',
                              height: 1,
                            ),
                          ),
                        ],
                      )),
                  
                 OnBoardingButton(
                        onPressed: () {
                          if (controller.formKey.currentState!.validate()) {
                            controller.formKey.currentState!.save();
                            // controller.update();
                            controller.postData(CenterBody(
                              name: controller.name.text,
                              username: controller.username.text,
                              email: controller.email.text,
                              password: controller.password.text,
                              country: controller.country.text,
                              subscriptionType: controller.subscriptionType.text,
                              subscriptionPeriod: controller.subscriptionPeriod.text,
                              formalEmail: controller.formalEmail.text,
                              phone: controller.phone.text,
                              formalPhone: controller.formalPhone.text,
                              website: controller.website.text,
                              address1: controller.address1.text,
                              address2: controller.address2.text,
                              state: controller.state.text,
                              province: controller.province.text,
                              zipCode: controller.zipCode.text,
                              facebook: controller.facebook.text,
                              instagram: controller.instagram.text,
                              twitter: controller.twitter.text,
                              snapchat: controller.snapchat.text,
                              youtube: controller.youtube.text,
                            )
                            );
                            print('success');
                            print(
                                '===========================${controller.email.text}');
                            print(
                                '===========================${controller.password.text}');
                            Get.to(() => Login());
                          } else {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Text('Please Enter all Fields'),
                                    ));
                          }
                        },
                        text: 'SAVE',
                        size: 22,
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validate;
  String? labelText;
  String? hintText;
  Widget? suffixIcon;
  TextInputType? keyboardType;
  TextFormFieldWidget({
    required this.controller,
    required this.validate,
    required this.labelText,
    required this.hintText,
    required this.suffixIcon,
    required this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        obscureText: false,
        validator: validate,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xffC4C4C4),
          ),
          errorStyle: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Colors.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
          ),
        ),
      ),
    );
  }
}
