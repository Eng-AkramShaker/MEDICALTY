import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../utils/information_image.dart';
import '../View/Pages/informations/create_new_section.dart';
import '../View/widget/textfield_screen/my_app_bar.dart';
import '../View/widget/textfield_screen/my_textfield_container.dart';
import '../View/widget/textfield_screen/onboarding_button.dart';
import '../View/widget/textfield_screen/my_text_form_field.dart';
import '../View/widget/textfield_screen/onboarding_text_widget.dart';
import 'center_controller.dart';
import 'center_register_model.dart';

class CenterHome extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CenterController(),
      builder:(controller) => MyTextFieldContainer(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: MyAppBar(
            title: 'Center Information',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
              child: Form(
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
                    const SizedBox(
                      height: 15.0,
                    ),
                    //Name Controller
                    MyTextFormField(
                      controller: controller.nameController,
                      validator: (value) {
                        if(value!.length > 25){
                          return 'CenterName Cant Be Larger Than 25';
                        }else if(value.length <2){
                          return 'CenterName Cant Be Less Than 2';
                        }
                        return null;
                      },
                      labelText: 'Center Name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/center_name.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    MyTextFormField(
                      controller: controller.passwordController,
                      validator: (value) {
                        if(value!.length > 25){
                          return 'Password Cant Be Larger Than 25';
                        }else if(value.length <2){
                          return 'Password Cant Be Less Than 2';
                        }
                        return null;
                      },
                      labelText: 'Password',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/center_name.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    //Username
                    MyTextFormField(
                      controller: controller.userNameController,
                      validator: (value) {
                        if(value!.length > 25){
                          return 'username Cant Be Larger Than 25';
                        }else if(value.length <2){
                          return 'username Cant Be Less Than 2';
                        }
                        return null;
                      },
                      labelText: '@username',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/username.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    //phone
                    MyTextFormField(
                      controller: controller.phoneController,
                      validator: (value) {
                        if(value!.length > 25){
                          return 'Phone Cant Be Larger Than 25';
                        }else if(value.length <2){
                          return 'Phone Cant Be Less Than 2';
                        }
                        return null;
                      },
                      labelText: '+99 -7999999999',
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                      suffixIcon: Image.asset('$imagePath/phone.png'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    MyTextFormField(
                      controller: controller.secondPhoneController,
                      validator: (value) {
                        if(value!.length > 25){
                          return 'Phone Cant Be Larger Than 25';
                        }else if(value.length <2){
                          return 'Phone Cant Be Less Than 2';
                        }
                        return null;
                      },
                      labelText: '+99 -7999999999',
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                      suffixIcon: Image.asset('$imagePath/phone.png'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    MyTextFormField(
                      controller: controller.websiteController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the center website';
                        }
                        if (value.length > 25) {
                          return 'Center website cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'Center website must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Center website',
                      keyboardType: TextInputType.url,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/url.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    MyTextFormField(
                      controller: controller.emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (value!.length < 12) {
                          return 'Email must have at least 2 characters';
                        }
                        if (!value.contains('@')) {
                          return 'Invalid email';
                        }
                        return null;
                      },
                      labelText: 'E-mail',
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      // suffixIcon: Image.asset('$imagePath/email.png',),
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.officalEmailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (value!.length < 12) {
                          return 'Email must have at least 2 characters';
                        }
                        if (!value.contains('@')) {
                          return 'Invalid email';
                        }
                        return null;
                      },
                      labelText: 'official e-mail',
                      keyboardType: TextInputType.emailAddress,

                      obscureText: false,
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.countryController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Country ';
                        }
                        if (value.length > 25) {
                          return 'Country cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'Country  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Country',
                      keyboardType: TextInputType.streetAddress,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/country.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.addressController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Address ';
                        }
                        if (value.length > 25) {
                          return 'Address cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'Address  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Address',
                      keyboardType: TextInputType.streetAddress,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/location.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.secondAddressController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Address ';
                        }
                        if (value.length > 25) {
                          return 'Address cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'Address  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Address 1',
                      keyboardType: TextInputType.streetAddress,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.stateController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the State Name ';
                        }
                        if (value.length > 25) {
                          return 'State Name cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'State Name  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'State name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/state.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.districtNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the District Name ';
                        }
                        if (value.length > 25) {
                          return 'District Name cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'District Name  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'District name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.postalController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Postal Code ';
                        }
                        if (value.length > 25) {
                          return 'Postal Code cannot be longer than 25 characters';
                        }
                        if (value.length < 2) {
                          return 'Postal Code  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Postal code',
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
                    MyTextFormField(
                      controller: controller.facebookController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Facebook ';
                        }
                        if (value.length > 200) {
                          return 'Facebook cannot be longer than 200 characters';
                        }
                        if (value.length < 2) {
                          return 'Facebook  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Facebook',
                      keyboardType: TextInputType.url,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/facebook.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.instagramController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Instagram ';
                        }
                        if (value.length > 200) {
                          return 'Instagram cannot be longer than 200 characters';
                        }
                        if (value.length < 2) {
                          return 'Instagram  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Instagram',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/instagram.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.twitterController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Twitter ';
                        }
                        if (value.length > 200) {
                          return 'Twitter cannot be longer than 200 characters';
                        }
                        if (value.length < 2) {
                          return 'Twitter  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Twitter',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/twitter.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.snapchatController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Snapchat ';
                        }
                        if (value.length > 200) {
                          return 'Snapchat cannot be longer than 200 characters';
                        }
                        if (value.length < 2) {
                          return 'Snapchat  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'Snapchat',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/snapchat.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    MyTextFormField(
                      controller: controller.youtubeController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Youtube ';
                        }
                        if (value.length > 200) {
                          return 'Youtube cannot be longer than 200 characters';
                        }
                        if (value.length < 2) {
                          return 'Youtube  must have at least 2 characters';
                        }
                        return null;
                      },
                      labelText: 'YouTube',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/youtube.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 94.0),
                    OnBoardingButton(
                      onPressed: () {
                        if(controller.formKey.currentState!.validate()){
                          controller.formKey.currentState!.save();
                          print('success');
                          controller.registerCenter(RegisterCenterModel(
                            name: controller.nameController.text,
                            username: controller.userNameController.text,
                            phone: controller.phoneController.text,
                            formalPhone: controller.secondPhoneController.text,
                            password:  controller.passwordController.text,
                            website: controller.websiteController.text,
                            address1:  controller.addressController.text,
                            address2:  controller.secondAddressController.text,
                            email:  controller.emailController.text,
                             country: "Egypt",
                            state:  controller.stateController.text,
                            facebook:  controller.facebookController.text,
                            formalEmail:  controller.officalEmailController.text,
                            instagram:  controller.instagramController.text,
                            snapchat:  controller.snapchatController.text,
                            twitter:  controller.twitterController.text,
                            youtube:  controller.youtubeController.text,
                            zipCode:  controller.postalController.text,
                           subscriptionType: controller.districtNameController.text,
                            subscriptionPeriod: controller.districtNameController.text,
                          ));
                        }else{
                          showDialog(context: context, builder: (_) => AlertDialog(
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
      ),
    );
  }
}
