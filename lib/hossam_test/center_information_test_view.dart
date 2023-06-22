// // ignore_for_file: camel_case_types, non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:medicalty/api/class/handling_data_view.dart';
// import 'package:medicalty/hossam_test/center_body_model.dart';
// import 'package:medicalty/hossam_test/center_information_test_controller.dart';
// import 'package:medicalty/view/pages/informations/create_new_section.dart';
// import 'package:medicalty/view/widget/textfield_screen/onboarding_button.dart';
// import 'package:medicalty/view/widget/textfield_screen/onboarding_text_form_field.dart';

// class TestCreateCerter extends StatelessWidget {
//   const TestCreateCerter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<TestCreateCenterController>(
//         init: TestCreateCenterController(),
//         builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest,
//          widget: Scaffold(
//               appBar: AppBar(
//                 title: const Text('Center Information'),
//               ),
//               body: Form(
//                 key: controller.formKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     //pass all arguments you want

//                     const SizedBox(height: 15.0),
//                     OnBoardingTextFormField(
//                       controller: controller.emailController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your email';
//                         }
//                         if (value!.length < 12) {
//                           return 'Email must have at least 2 characters';
//                         }
//                         if (!value.contains('@')) {
//                           return 'Invalid email';
//                         }
//                         return null;
//                       },
//                       labelText: 'E-mail',
//                       keyboardType: TextInputType.emailAddress,
//                       obscureText: false,
//                       suffixIcon: const Icon(Icons.email_outlined),
//                     ),
//                     const SizedBox(height: 15.0),

//                     const SizedBox(height: 15.0),
//                     OnBoardingTextFormField(
//                         controller: controller.passWordController,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter the Address ';
//                           }
//                           if (value.length > 25) {
//                             return 'Address cannot be longer than 25 characters';
//                           }
//                           if (value.length < 2) {
//                             return 'Address  must have at least 2 characters';
//                           }
//                           return null;
//                         },
//                         labelText: 'PassWord',
//                         keyboardType: TextInputType.name,
//                         obscureText: false,
//                         suffixIcon: const Icon(Icons.password_outlined)),
//                     const SizedBox(height: 15.0),

//                     OnBoardingButton(
//                       onPressed: () {
//                         if (controller.formKey.currentState!.validate()) {
//                           controller.formKey.currentState!.save();
//                           // controller.postData(
//                           //   controller.map={
//                           //     'email':controller.emailController.text,
//                           //     'password':controller.passWordController.text,
//                           //     'name':'Example Center',
//                           //     'username':'example_center',
//                           //     'country':'US',
//                           //     'subscription_type':'Basic',
//                           //     'subscription_period':'Month',
//                           //     'formal_email':'example@example.com',
//                           //     'phone':'555-1234',
//                           //     'formal_phone':'555-5678',
//                           //     'website':'https://example.com',
//                           //     'address1':'123 Main St',
//                           //     'address2':'Apt 4',
//                           //     'state':'CA',
//                           //     'zip_code':'90210',
//                           //     'facebook':'https://www.facebook.com/example',
//                           //     'instagram':'https://www.instagram.com/example',
//                           //     'twitter':'https://www.twitter.com/example',
//                           //     'snapchat':'https://www.snapchat.com/example',
//                           //     'youtube':'https://www.youtube.com/channel/example',
//                           //   }
//                           // );
//                           controller.postData(CenterBody(
//                             address1: '123 Main St',
//                             address2: 'Apt 4',
//                             country: 'US',
//                             email: controller.emailController.text,
//                             facebook: 'https://www.youtube.com/channel/example',
//                             formalEmail: 'example@example.com',
//                             formalPhone: '555-5678',
//                             instagram: 'https://www.youtube.com/channel/example',
//                             name: 'Example Center',
//                             password: controller.passWordController.text,
//                             phone: '555-1234',
//                             province: 'California',
//                             snapchat: 'https://www.snapchat.com/example',
//                             state: 'CA',
//                             subscriptionPeriod: 'Month',
//                             subscriptionType: 'Basic',
//                             twitter: 'https://www.youtube.com/channel/example',
//                             username: 'example_center',
//                             website: 'https://www.youtube.com/channel/example',
//                             youtube: 'https://www.youtube.com/channel/example',
//                             zipCode: '90210',
//                           )
//                           );
//                           print('success');
//                           Get.to(CreateNewSectionPage());
//                         } else {
//                           showDialog(
//                               context: context,
//                               builder: (_) => const AlertDialog(
//                                     title: Text('Please Enter all Fields'),
//                                   ));
//                         }
//                       },
//                       text: 'SAVE',
//                       size: 22,
//                     ),

//                     const SizedBox(height: 20),
//                     //================= select image ====================
//                   ],
//                 ),
//               ),
//             ),
//             ),
//             );
//   }
// }

