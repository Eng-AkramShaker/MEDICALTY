// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicalty/controllers/informations/new_products_services_controller.dart';
import '../../../constatnt/color_app.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'new_doctor.dart';

class NewProductPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewProductsServicesController>(
      init: NewProductsServicesController(),
        builder: (controller)=> MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New products / services',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Form(
              key: controller.formKey,
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
                    controller: controller.idProductController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the ID ';
                      }
                      if (value.length > 25) {
                        return 'ID cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'ID  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: '#ID products',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/id_section.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyDropDownMenu(
                    text: 'Product type',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.productType = val!;
                      }
                  ),

                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.productNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Product Name ';
                      }
                      if (value.length > 25) {
                        return 'Product Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Product Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Product name',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.productDescController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Product Description ';
                      }
                      if (value.length > 2500) {
                        return 'Product Description cannot be longer than 2500 characters';
                      }
                      if (value.length < 2) {
                        return 'Product Description  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Product Description',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    maxLines: 6,
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: OnBoardingTextFormField(
                          controller: controller.unitPriceController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the Unit Price ';
                            }
                            if (value.length > 25) {
                              return 'Unit Price cannot be longer than 25 characters';
                            }
                            if (value.length < 2) {
                              return 'Unit Price  must have at least 2 characters';
                            }
                            return null;
                          },
                          labelText: 'Unit price \$',
                          keyboardType: TextInputType.number,
                          obscureText: false,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 5,
                        child: OnBoardingTextFormField(
                          controller: controller.unitNumberController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the Unit Number ';
                            }
                            if (value.length > 25) {
                              return 'Unit Number cannot be longer than 25 characters';
                            }
                            if (value.length < 2) {
                              return 'Unit Number  must have at least 2 characters';
                            }
                            return null;
                          },
                          labelText: 'Unit number',
                          keyboardType: TextInputType.number,
                          obscureText: false,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 105),
                  OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(NewDoctorPage());
                      }else{

                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

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
      ),
    ));
  }
}
