// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:Medicalty/View/Pages/home_screen.dart';
import 'package:Medicalty/middleWare/home_middleware.dart';
import 'package:get/get.dart';
import '../View/Pages/accounts/create_accounts.dart';
import '../View/Pages/accounts/login_page.dart';
import '../View/Pages/home_page/HomePage.dart';
import '../View/Pages/home_page/Favourite.dart';
import '../View/Pages/home_page/navBar.dart';
import '../View/Pages/onboarding/onBoarding_start.dart';
import '../View/Pages/review/appSettingPage.dart';
import '../View/Pages/review/reviewsPage.dart';
import '../View/Pages/review/trainerDetailPage.dart';
import '../middleWare/auth_middleware.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: Boarding_Start, page: () => OnBoardingStart(), middlewares: [
      // AuthMiddleWare(),
      HomeMiddleWare(),
    ]),
    GetPage(name: navBar, page: () => NavBar()),
    GetPage(name: homePage18_1, page: () => HomePage()),
    GetPage(name: appSettingPage, page: () => AppSetting()),
    GetPage(name: reviewsPage, page: () => Reviews()),
    GetPage(name: trainerDetailPage, page: () => TrainerDetail()),
    GetPage(name: homePage18_4, page: () => Favourite()),
    GetPage(name: createAccounts, page: () => Create_Accounts()),
    GetPage(name: login, page: () => Login()),
    GetPage(name: homeScreen, page: () => HomeScreen(),),
  ];

  //===================================================================

  static getBoarding_Start() => Boarding_Start;
  static getnavBar() => navBar;
  static getHome() => homePage18_1;
  static getAppSetting() => appSettingPage;
  static getreviewsPage() => reviewsPage;
  static gettrainerDetailPage() => trainerDetailPage;
  static gethomePage18_4() => homePage18_4;
  static getcreateAccounts() => createAccounts;
  static getlogin() => login;
  static getHomeScreen() => homeScreen;

//====================================================================
  static String Boarding_Start = '/';
  static String navBar = '/navBar';
  static String homePage18_1 = '/homepage18_1';
  static String appSettingPage = '/appSetting';
  static String reviewsPage = '/reviewsPage';
  static String trainerDetailPage = '/trainerDetailPage';
  static String homePage18_4 = '/homePage18_4';
  static String createAccounts = '/createAccounts';
  static String login = '/login';
  static String homeScreen = '/homescreen';
}
