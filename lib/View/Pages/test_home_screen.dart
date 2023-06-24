// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:Medicalty/View/Pages/onboarding/onBoarding_start.dart';
import 'package:Medicalty/services/settingServices.dart';
import 'package:Medicalty/view/pages/home_page/Speed_Dial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen for test only as ${myBox!.get('type')}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  myBox!.clear();
                  print('========= Clear myBox ==============');

                  Get.to(() => const OnBoardingStart());
                },
                color: Colors.blue,
                child: const Text('Sign Out')),
            SizedBox(
              height: 30.0,
            ),
            MaterialButton(
                onPressed: () {
                  Get.to(() => Speed_Dial());
                },
                color: Colors.blue,
                child: const Text('go to Speed_Dial ')),
          ],
        ),
      ),
    );
  }
}
