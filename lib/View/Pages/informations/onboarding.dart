// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';
import '../onboarding/onboarding_one.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

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

                  // height: 1000,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(24),
                    //   topRight: Radius.circular(24),
                    // ),
                    gradient: LinearGradient(
                      colors: [
                        ColorApp.backgroundYallowColor,
                        ColorApp.backgroundWhaitColor,
                        ColorApp.backgroundWhaitColor,
                        ColorApp.backgroundYallowColor,
                        ColorApp.backgroundWhaitColor,
                        ColorApp.backgroundWhaitColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: OnboardingOne()),
            ),
          ],
        ),
      ),
    );
  }
}
