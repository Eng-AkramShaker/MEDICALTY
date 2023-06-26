// ignore_for_file: prefer_const_constructors, unused_import

import 'package:Medicalty/View/Pages/home_page/HomePage.dart';
import 'package:Medicalty/bindings/initail_Bindings.dart';
import 'package:Medicalty/routes/routes.dart';
import 'package:Medicalty/services/settingServices.dart';
import 'package:Medicalty/view/pages/informations/new_expenses.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'View/Pages/informations/create_insurance_company.dart';
import 'View/Pages/informations/create_laboratory.dart';
import 'constatnt/color_app.dart';
import 'services/initServieces.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

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
      initialBinding: InitailBaindings(),
      getPages: AppPage.routes,
      initialRoute: AppPage.getBoarding_Start(),
    );
  }
}
