// ignore_for_file: prefer_const_constructors, unused_import

import 'package:Medicalty/bindings/initail_Bindings.dart';
import 'package:Medicalty/routes/routes.dart';
import 'package:Medicalty/services/initialServices.dart';
import 'package:Medicalty/services/settingServices.dart';
import 'package:Medicalty/view/pages/informations/new_expenses.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'View/Pages/drawers/about.dart';
import 'constatnt/color_app.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Medicalty',
      initialBinding: InitailBaindings(),
      // home: About(),
      getPages: AppPage.routes,
      initialRoute: AppPage.getBoarding_Start(),
    );
  }
}
