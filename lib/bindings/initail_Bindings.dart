// ignore_for_file: file_names

import 'package:Medicalty/api/class/crud.dart';
import 'package:get/get.dart';

class InitailBaindings extends Bindings
{
  @override
  void dependencies() {
    Get.put(Crud());
    
  }

}


