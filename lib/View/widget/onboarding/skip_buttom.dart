// ignore_for_file: unused_import, prefer_const_constructors

import 'package:carehealth/View/Pages/choose_major/choose_major.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Pages/accounts/create_accounts.dart';
// import '../../pages/onboarding/center_information.dart';
//
// import '../../pages/onboarding/center_information.dart';

class SkipBottumWidget extends StatelessWidget {
  const SkipBottumWidget({Key? key, this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.off(ChooseMajor());
          },
          child: const Text(
            "Skip",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
