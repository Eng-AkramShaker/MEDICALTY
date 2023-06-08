// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';
import '../../Pages/accounts/login_page.dart';
import '../../Pages/accounts/verify_account.dart';
import '../../Pages/drawers/about.dart';
import '../../Pages/drawers/subscription.dart';
import '../../Pages/drawers/support.dart';
import '../../Pages/informations/adding_products_pharmacy.dart';
import '../../Pages/informations/new_products_services.dart';
import '../../Pages/profile/notifications.dart';
import '../../Pages/profile/profile.dart';
import '../../Pages/review/appSettingPage.dart';
import '../../Pages/review/trainerDetailPage.dart';

Widget MyDrawerList() {
  return Container(
    child: Column(
      children: [
        menuItem("Profile", Icons.person, () {
          Get.to(Profile());
        }),
        div(),
        menuItem("details", Icons.dynamic_feed, () {
          Get.to(TrainerDetail());
        }),
        div(),
        menuItem("Notifications", Icons.notifications_active, () {
          Get.to(Notifications());
        }),
        div(),
        menuItem("Subscription", Icons.subscriptions, () {
          Get.to(Subscription());
        }),
        div(),
        menuItem("Support", Icons.support_agent, () {
          Get.to(Support());
        }),
        div(),
        menuItem("Product updates", Icons.system_update, () {
          Get.to(ProductsPharamcyPage());
        }),
        div(),
        menuItem("About  Pro-doctor", Icons.info, () {
          Get.to(About());
        }),
        div(),
        menuItem("Pro-doctor setup", Icons.settings_accessibility, () {
          Get.to(NewProductPage());
        }),
        div(),
        menuItem("Settings system", Icons.settings_suggest, () {
          Get.to(AppSetting());
        }),
        div(),
        menuItem("Login setting", Icons.settings_applications, () {
          Get.to(Verify());
        }),
        div(),
        menuItem("Logout", Icons.logout, () {
          sharedPref!.clear();
          Get.off(Login());
        }),
      ],
    ),
  );
}

Widget menuItem(String title, IconData icon, Function()? onTap) {
  return Material(
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'Switzer'),
                ))
          ],
        ),
      ),
    ),
  );
}

Widget div() {
  return Divider(
    thickness: 2,
    color: Colors.grey,
  );
}
