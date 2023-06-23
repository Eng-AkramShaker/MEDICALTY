// ignore_for_file: body_might_complete_normally_nullable, curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myBox!.get('type') == 'pationt')
      return const RouteSettings(name: '/homepage');

    return null;
  }
}
