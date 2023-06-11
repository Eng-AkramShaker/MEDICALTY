// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:medicalty/View/Pages/informations/create_clients.dart';
import 'package:medicalty/View/Pages/informations/create_insurance_company.dart';
import 'package:medicalty/View/Pages/informations/create_new_section.dart';
import 'package:medicalty/View/Pages/informations/new_invoices.dart';
import 'package:medicalty/routes/routes.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'View/Pages/Trainer/addNew.dart';
import 'View/Pages/home_page/Favourite.dart';
import 'View/Pages/home_page/speed_Dial.dart';
import 'View/Pages/home_page/Book_Now.dart';
import 'View/Pages/informations/adding_products_pharmacy.dart';
import 'View/Pages/informations/appointment_booking.dart';
import 'View/Pages/informations/center_information.dart';
import 'View/Pages/informations/create_laboratory.dart';
import 'View/Pages/informations/create_pharmacy.dart';
import 'View/Pages/informations/disease_reporting.dart';
import 'View/Pages/informations/new_doctor.dart';
import 'View/Pages/informations/new_employee.dart';
import 'View/Pages/informations/new_expenses.dart';
import 'View/Pages/informations/new_experiences.dart';
import 'View/Pages/informations/new_products_services.dart';
import 'View/Pages/informations/new_request.dart';
import 'View/Pages/informations/registration_patient.dart';
import 'View/Pages/profile/profile.dart';
import 'View/Pages/review/appSettingPage.dart';
import 'View/Pages/review/trainerDetailPage.dart';
import 'constatnt/color_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

//

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

//mon
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          breakpointsLandscape: [
            const ResponsiveBreakpoint.resize(560, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
            const ResponsiveBreakpoint.resize(1024, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1120, name: TABLET),
          ],
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Medicalty',
      //
      // home: CreateClientsPage(),
      home: ProductsPharmacyPage(),
      // getPages: AppPage.routes,
      initialRoute: AppPage.getBoarding_Start(),
    );
  }
}
