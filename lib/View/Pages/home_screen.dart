import 'package:Medicalty/View/Pages/onboarding/onBoarding_start.dart';
import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'),),
      body: Center(
        child: MaterialButton(onPressed: (){
          myBox!.clear();
          Get.to(()=> const OnBoardingStart());
        },
        color: Colors.blue,
        child: const Text('Sign Out')),
      ),
    );
  }
}