// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carehealth/constatnt/color_app.dart';
import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/onboarding/onBoarding_controller.dart';
import '../../widget/onboarding/next_bottun.dart';
import '../../widget/onboarding/skip_buttom.dart';
import '../../widget/onboarding/slider_widget.dart';
import 'onboarding_three.dart';

class OnboardingTwo extends GetView<OnBoardingControllerImp> {
  const OnboardingTwo({Key? key}) : super(key: key);
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
                      ColorApp.backgroundonBoardingTghree.withOpacity(0.5),
                      ColorApp.backgroundWhaitColor,
                      ColorApp.backgroundWhaitColor,
                      ColorApp.backgrounOnBoardingTow.withOpacity(0.5),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, right: 0, left: 0, bottom: 0),
                          child: Container(
                            height: 350,
                            child: Image.asset("assets/images/three.png"),
                            // SvgPicture.asset(
                            //    ImagesApp.onBoarding3,
                            //    height: 450.0,
                            //    width: double.infinity,
                            //  ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Perfect Body",
                                style: Styles.textStyle40blackBebas),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Doing",
                                    style: Styles.textStyle40blackBebas),
                                Text(" Crossfit",
                                    style: Styles.textStyle40greenBebas),
                              ],
                            ),
                            Text(
                              "Exercises",
                              style: Styles.textStyle40blackBebas,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SkipBottumWidget(),
                              const Spacer(),
                              const SlidersWidget(),
                              const Spacer(),
                              NextButtomWidget(
                                onTap: () {
                                  Get.to(OnboardingThree());
                                  controller.nextPage();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
