// ignore_for_file: body_might_complete_normally_nullable, curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';

class HomeMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (myBox!.get('type') != null)
    {
      return const RouteSettings(name: '/homescreen');
    } 
    return null;
    
       
    
    
      
  }
}
