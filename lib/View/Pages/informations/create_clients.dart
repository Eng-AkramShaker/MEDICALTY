// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, duplicate_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicalty/View/widget/textfield_screen/my_drop_down_menu.dart';
import 'package:medicalty/View/widget/textfield_screen/my_drop_down_menu.dart';
import 'package:medicalty/View/widget/textfield_screen/my_drop_down_menu.dart';
import 'package:medicalty/controllers/informations/create_clients_controller.dart';
import '../../../constatnt/color_app.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'new_expenses.dart';

class CreateClientsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateClientsController>(
      init: CreateClientsController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create Clients',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Form(
              key: controller.formKey,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    controller: controller.idClientController,
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
                    labelText: '#ID Client',
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
                        child: MyDropDownMenu(
                          myList: controller.items,
                          onChanged:  (val) {
                            controller.dropdownvalue = val!;
                          }
                        ),
                        ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 7,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200), // Adjust the maximum width as needed
                          child: OnBoardingTextFormField(
                            controller: controller.firstNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the First Name ';
                              }
                              if (value.length > 25) {
                                return 'First Name cannot be longer than 25 characters';
                              }
                              if (value.length < 2) {
                                return 'First Name  must have at least 2 characters';
                              }
                              return null;
                            },
                            labelText: 'First Name',
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            suffixIcon: Image.asset(
                              '$imagePath/path.png',
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.secondNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Name ';
                      }
                      if (value.length > 25) {
                        return 'Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'second and last name',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/path.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.nameCompanyController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Company Name ';
                      }
                      if (value.length > 25) {
                        return 'Company Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Company Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'name of the client\'s company',
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
                        child: MyDropDownMenu(
                            myList: controller.items,
                            onChanged:  (val) {
                              controller.dropdownvalue = val!;
                            }
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 7,
                        child: OnBoardingTextFormField(
                          controller: controller.phoneController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the Phone ';
                            }
                            if (value.length > 25) {
                              return 'Phone cannot be longer than 25 characters';
                            }
                            if (value.length < 2) {
                              return 'Phone  must have at least 2 characters';
                            }
                            return null;
                          },
                          labelText: 'phone number',
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
                        child: MyDropDownMenu(
                            myList: controller.items,
                            onChanged:  (val) {
                              controller.dropdownvalue = val!;
                            }
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 7,
                        child: OnBoardingTextFormField(
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
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          suffixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.attributedController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Attributed ';
                      }
                      if (value.length > 25) {
                        return 'Attributed cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Attributed  must have at least 2 characters';
                      }
                      return null;
                    },

                    labelText: 'attributed to',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.customerAddressController,
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

                    labelText: 'Customer address',
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/location.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.secondCustomerAddressController,
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

                    labelText: 'Customer address 1',
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.cityController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the City ';
                      }
                      if (value.length > 25) {
                        return 'City cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'City  must have at least 2 characters';
                      }
                      return null;
                    },

                    labelText: 'City',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/country.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.interruptController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Interrupt ';
                      }
                      if (value.length > 25) {
                        return 'Interrupt cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Interrupt  must have at least 2 characters';
                      }
                      return null;
                    },

                    labelText: 'Interrupt',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/inter.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.zipCodeController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the ZIP Code ';
                      }
                      if (value.length > 25) {
                        return 'ZIP Code cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'ZIP Code  must have at least 2 characters';
                      }
                      return null;
                    },

                    labelText: 'ZIP code',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/postal.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
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
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(NewExpensesPage());
                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

                    },
                    text: 'Create Client',
                    size: 22,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

}
