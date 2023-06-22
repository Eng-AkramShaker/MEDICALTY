// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:Medicalty/View/Pages/informations/registration_patient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/informations/new_experiences_controller.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_drop_down_menu.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/my_text_form_field.dart';

class NewExperiencesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewExperiencesController>(
      init: NewExperiencesController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'New Experiences',
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
                  MyTextFormField(
                    controller: controller.idExperiencesController,
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
                    labelText: '#ID Experiences',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/path.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyTextFormField(
                    controller:  controller.nameExpController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Name of the experience ';
                      }
                      if (value.length > 25) {
                        return 'Name of the experience cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Name of the experience  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'name of the experience',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/xmlid.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyTextFormField(
                    controller:  controller.namePlaceController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Name of the place ';
                      }
                      if (value.length > 25) {
                        return 'Name of the place cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Name of the place  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'name of the place',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/xmlid2.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyTextFormField(
                    controller:  controller.workPlaceController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Work place Country ';
                      }
                      if (value.length > 25) {
                        return 'Work place Country cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Work place Country  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Work place country',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/location2.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyTextFormField(
                    controller:  controller.beginningWorkController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Beginning work ';
                      }
                      if (value.length > 25) {
                        return 'Beginning work cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Beginning work  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Beginning work',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/date.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyTextFormField(
                    controller:  controller.workFinishedController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the work is Finished ';
                      }
                      if (value.length > 25) {
                        return 'work is Finished cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'work is Finished  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'work is finished',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/date.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MyDropDownMenu(
                    text: 'Is he on top of his work.',
                      myList: controller.items,
                      onChanged:  (val) {
                        controller.workValue = val!;
                      }
                  ),
                  const SizedBox(height: 64),
                  OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(RegistrationPatientPage());
                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }
                    },
                    text: 'Create Experiences',
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
