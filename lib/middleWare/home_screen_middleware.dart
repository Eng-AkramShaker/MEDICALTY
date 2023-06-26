// ignore_for_file: body_might_complete_normally_nullable, curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenMiddleWare extends GetMiddleware {
  // @override
  // int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    if (myBox!.get('type') != null)
      return const RouteSettings(name: '/navBar');

    return null;
  }
}
