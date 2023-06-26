// ignore_for_file: unused_import

import 'package:Medicalty/api/class/status_request.dart';
import 'package:get/get.dart';


handlingData(response){
  if (response is StatusRequest) {
    return response;
  }else{
    return StatusRequest.success;
  }
}