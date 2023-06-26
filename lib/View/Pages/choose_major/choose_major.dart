// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print

import 'package:Medicalty/view/pages/informations/create_pharmacy.dart';
import 'package:Medicalty/view/pages/informations/new_doctor.dart';
import 'package:Medicalty/view/pages/informations/new_employee.dart';
import 'package:Medicalty/view/pages/informations/registration_patient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../../../services/settingServices.dart';
import '../../widget/choose_major/custom_choose_major.dart';
import '../informations/center_information.dart';
//import 'alert_dialog.dart';

class ChooseMajor extends StatelessWidget {
  ChooseMajor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ColorApp.backgroundonBoardingFour.withOpacity(0.5),
                        ColorApp.backgroundWhaitColor.withOpacity(0.0),
                        ColorApp.backgroundWhaitColor.withOpacity(0.0),
                        ColorApp.backgroundonBoardingFour2.withOpacity(0.5),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      children: [
                        const Text(
                          "Pick one up to start now!",
                          textAlign: TextAlign.center,
                          style: Styles.textStyle22,
                        ),
                        
                        CustomChooseMajor(
                              image: ImagesApp.medicalCenter,
                              textTitle: "I'm a Patient'",
                              onTap: () {
                                myBox!.put('type', 'patient');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> RegistrationPatientPage());
                              },
                            ),
                        Row(
                          children: [
                            CustomChooseMajor(
                              image: ImagesApp.imDoctor,
                              textTitle: "I'm a Doctor'",
                              onTap: () {
                                myBox!.put('type', 'doctor');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> NewDoctorPage());
                              },
                            ),
                            Spacer(),
                            CustomChooseMajor(
                              image: ImagesApp.imNurse,
                              textTitle: "I'm a Nurse",
                              onTap: () {
                                 myBox!.put('type', 'nurse');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> NewEmployeePage());
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomChooseMajor(
                                onTap: () {
                                  myBox!.put('type', 'Physiotherapy');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> NewEmployeePage());
                                },
                                image: ImagesApp.physiotherapy,
                                textTitle: "Physiotherapy"),
                            Spacer(),
                            CustomChooseMajor(
                              image: ImagesApp.pharmacy,
                              textTitle: "pharmacy",
                              onTap: () {
                                myBox!.put('type', 'pharmacy');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> CreatePharmacyPage());
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomChooseMajor(
                              image: ImagesApp.hospital,
                              textTitle: "hospital",
                              onTap: () {
                                myBox!.put('type', 'hospital');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> CenterInformationPage());
                              },
                            ),
                            Spacer(),
                            CustomChooseMajor(
                              image: ImagesApp.pharmacy,
                              textTitle: "Medical_Center",
                              onTap: () {
                                // Get.to(Create_Accounts());
                                //================= hossam test ===================
                                myBox!.put('type', 'center');
                                print('================= myBox type : ${myBox!.get('type')}');
                                Get.to(()=> CenterInformationPage());
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
