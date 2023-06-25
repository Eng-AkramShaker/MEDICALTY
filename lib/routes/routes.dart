// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:Medicalty/View/Pages/home_screen.dart';
import 'package:Medicalty/middleWare/home_screen_middleware.dart';
import 'package:Medicalty/view/pages/home_page/Speed_Dial.dart';
import 'package:Medicalty/view/pages/informations/new_doctor.dart';
import 'package:get/get.dart';
import '../View/Pages/accounts/create_accounts.dart';
import '../View/Pages/accounts/login_page.dart';
import '../View/Pages/home_page/HomePage.dart';
import '../View/Pages/home_page/Favourite.dart';
import '../View/Pages/home_page/navBar.dart';
import '../View/Pages/informations/create_pharmacy.dart';
import '../View/Pages/onboarding/onBoarding_start.dart';
import '../View/Pages/review/appSettingPage.dart';
import '../View/Pages/review/reviewsPage.dart';
import '../View/Pages/review/trainerDetailPage.dart';
import '../middleWare/home_page_middleware.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: Boarding_Start, page: () => OnBoardingStart(), middlewares: [
      HomePageMiddleWare(),
      HomeScreenMiddleWare(),
    ]),
    GetPage(name: navBar, page: () => NavBar()),
    GetPage(name: homePage, page: () => HomePage()),
    GetPage(name: appSettingPage, page: () => AppSetting()),
    GetPage(name: reviewsPage, page: () => Reviews()),
    GetPage(name: trainerDetailPage, page: () => TrainerDetail()),
    GetPage(name: favourite, page: () => Favourite()),
    GetPage(name: createAccounts, page: () => Create_Accounts()),
    GetPage(name: login, page: () => Login()),
    GetPage(name: homeScreen, page: () => HomeScreen(),),
    GetPage(name: speedDial, page: () => Speed_Dial(),),
    GetPage(name: createNewDoctor, page: () => NewDoctorPage(),),
    GetPage(name: createPharmacyPage, page: () => CreatePharmacyPage(),),
  ];

  //===================================================================

  static getBoarding_Start() => Boarding_Start;
  static getnavBar() => navBar;
  static getHome() => homePage;
  static getAppSetting() => appSettingPage;
  static getreviewsPage() => reviewsPage;
  static gettrainerDetailPage() => trainerDetailPage;
  static gethomePage18_4() => favourite;
  static getcreateAccounts() => createAccounts;
  static getlogin() => login;
  static getHomeScreen() => homeScreen;
  static getCreateNewDoctor() => createNewDoctor;
  static getSpeedDial() => speedDial;
  static getCreatePharmacyPage() => createPharmacyPage;

//====================================================================
  static String Boarding_Start = '/';
  static String navBar = '/navBar';
  static String homePage = '/homepage';
  static String appSettingPage = '/appSetting';
  static String reviewsPage = '/reviewsPage';
  static String trainerDetailPage = '/trainerDetailPage';
  static String favourite = '/favourite';
  static String createAccounts = '/createAccounts';
  static String login = '/login';
  static String homeScreen = '/homescreen';
  static String createNewDoctor = '/createNewDoctor';
  static String speedDial = '/speedDial';
  static String createPharmacyPage = '/createPharmacyPage';
}
//  