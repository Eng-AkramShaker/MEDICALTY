// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/adding_product_pharmacy_controller.dart';
import '../../../model/pharmacy/addProdacteModle.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/my_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_laboratory.dart';

class ProductsPharmacyPage extends StatelessWidget {


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
    return GetBuilder<AddingProductPharmacyController>(
      init: AddingProductPharmacyController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Adding products pharmacyPage',
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
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
                      MyTextFormField(
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
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/path.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
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
                        labelText: 'product name',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        suffixIcon: Image.asset(
                          '$imagePath/user.png',
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.descController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Description ';
                          }
                          if (value.length > 2500) {
                            return 'Description cannot be longer than 2500 characters';
                          }
                          if (value.length < 2) {
                            return 'Description  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Product Description',
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 15.0),
                      MyTextFormField(
                        controller: controller.informationController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Product Information ';
                          }
                          if (value.length > 2500) {
                            return 'Product Information cannot be longer than 2500 characters';
                          }
                          if (value.length < 2) {
                            return 'Product Information  must have at least 2 characters';
                          }
                          return null;
                        },
                        labelText: 'Product information',
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
                  child: MyTextFormField(
                    controller: controller.priceController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the PRice ';
                      }
                      if (value.length > 25) {
                        return 'PRice cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'PRice  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'price \$',
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
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){

                        controller.formKey.currentState!.save();

                        controller.addProductPharmacy(AddProductModel(
                          name: controller.productNameController.text,
                          description: controller.descController.text,
                          details: controller.informationController.text,
                          price: controller.priceController.text,

                        ), context);


                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }
                    },
                    text: 'SAVE',
                    size: 22,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
