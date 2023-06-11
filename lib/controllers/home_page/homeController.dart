// ignore_for_file: file_names, implementation_imports, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View/widget/homePage/list_View.dart';
import '../../constatnt/color_app.dart';

class HomeController extends GetxController {
  // bool notify_1 = true;
  // bool notify_2 = false;

// ====== Part Category  ===========================================================================

  List items_1 = [
    list_V_1(name: 'Doctors', name_image: 'a5.png'),
    list_V_1(name: 'nurses', name_image: 'a5.png'),
    list_V_1(name: 'Medical', name_image: 'a5.png'),
    list_V_1(name: 'Doctors', name_image: 'a5.png'),
    list_V_1(name: 'nurses', name_image: 'a5.png'),
    list_V_1(name: 'Doctors', name_image: 'a5.png'),
    list_V_1(name: 'nurses', name_image: 'a5.png'),
    list_V_1(name: 'Medical', name_image: 'a5.png'),
    list_V_1(name: 'Medical', name_image: 'a5.png'),
    list_V_1(name: 'Medical', name_image: 'a5.png'),
    list_V_1(name: 'Medical', name_image: 'a5.png'),
    list_V_1(name: 'Medical', name_image: 'a5.png'),
  ];
  // ====== The best doctors  ===========================================================================
  List items_2 = [
    grid_V_2(
        name: 'Dr. jasmin noor',
        kcal: '110 kcal',
        min: '10 min',
        beginner: 'beginner',
        color: ColorApp.yellowColor),
    grid_V_2(
        name: 'Dr. amany',
        kcal: '110 kcal',
        min: '10 min',
        beginner: 'beginner',
        color: ColorApp.backgrounOnBoardingTow),
    grid_V_2(
        name: 'Dr. noor noor',
        kcal: '110 kcal',
        min: '10 min',
        beginner: 'beginner',
        color: ColorApp.backgroundonBoardingFour),
  ];

  // Popular -----------------------------------------------------------
  List items_3 = [
    grid_V_Popular(title: 'Physiotherapy session for the elderly'),
    grid_V_Popular(title: 'Wound changing and sterilization session'),
  ];

// Meal_Plans -----------------------------------------------------------

  List items_4 = [
    grid_V_Meal_Plans(title: 'Gastric bypass surgery', num: '1300\$ - 2000\$'),
    grid_V_Meal_Plans(title: 'LASIK eye surgery', num: '1300\$ - 2000\$'),
  ];

// =========================================================================================
  String assetName_1 = 'assets/images/Ellipse.png';

  

//=================== List Detaile doctores ============================
  List bestDoctorList = [
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 3245,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 3,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 2154,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 5,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 5208,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 1,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 1154,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 4,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 1225,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 5,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 3254,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 2,
    }
  ];

// =================== List reviews ================================
  List reviewsList = [
    {
      'userid': '1',
      'name': 'Sharon Jem',
      'image': 'assets/images/47.png',
      'comment':
          'Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '2',
      'name': 'Sharon Jem',
      'image': 'assets/images/63.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '3',
      'name': 'Sharon Jem',
      'image': 'assets/images/40.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '4',
      'name': 'Sharon Jem',
      'image': 'assets/images/59.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '5',
      'name': 'Sharon Jem',
      'image': 'assets/images/59.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '6',
      'name': 'Sharon Jem',
      'image': 'assets/images/59.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
  ];

  IconData? get iconData => Icons.favorite_border;

  dynamic get iconColor => ColorApp.greyColor2;

  void changeColorIconFav() {
    if (iconColor == ColorApp.greyColor2) {
      // iconColor = ColorApp.redColor;
    }
  }
  // =======================================================================
}
