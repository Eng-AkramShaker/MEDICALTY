// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_laboratory.dart';

class ProductsPharamcyPage extends StatelessWidget {
  TextEditingController idProductController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController informationController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String imagePath = 'assets/images/textfield';

  // PreferredSizeWidget myAppBar(){
  //   return  AppBar(
  //     foregroundColor: ColorApp.blackColor,
  //     leading: IconButton(
  //       onPressed: () {
  //         Get.back();
  //       },
  //       icon: Icon(Icons.keyboard_arrow_left, size: 35),
  //     ),
  //     elevation: 0.0,
  //     centerTitle: true,
  //     backgroundColor: Colors.transparent,
  //     title: const Text(
  //       'Adding products pharamcyPage',
  //       style: TextStyle(
  //           fontWeight: FontWeight.w700,
  //           fontSize: 18,
  //           color: ColorApp.blackColor,
  //           fontFamily: 'Montserrat'),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Adding products pharmacyPage',
        ),
        body: SingleChildScrollView(
          child: Column(
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
                      controller: idProductController,
                      validator: () {},
                      hintText: '#ID products',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/path.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: productNameController,
                      validator: () {},
                      hintText: 'product name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      suffixIcon: Image.asset(
                        '$imagePath/user.png',
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: descController,
                      validator: () {},
                      hintText: 'Product Description',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 3,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: informationController,
                      validator: () {},
                      hintText: 'Product information',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 3,
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
                      alignment: Alignment.centerLeft,
                      child: OnBoardingTextWidget(
                        text: 'Pictures of the product',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                      )),
                ),
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: OnBoardingTextFormField(
                  controller: priceController,
                  validator: () {},
                  hintText: 'price \$',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  suffixIcon: Image.asset(
                    '$imagePath/value.png',
                    height: 1,
                  ),
                ),
              ),
              const SizedBox(height: 92),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                ),
                child: OnBoardingButton(
                  onPressed: () {},
                  text: 'SAVE',
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
