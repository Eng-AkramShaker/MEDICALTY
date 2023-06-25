// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, avoid_print

import 'package:Medicalty/api/functions/check_internet.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Box? myBox;
SharedPreferences? sharedPref;

class SettingServices extends GetxService {
  //======================== Hive ================================================
  Future<Box> openHiveBox(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    print('============== myBox was initailaztion =============');
    return await Hive.openBox(boxName);
  }

  //========================== Check Internet =========================================
  Future<SettingServices> init() async {
    checkInternet();

    return this;
  }

  //======================== SharedPreferences ================================================

  Future<SettingServices> initSharedPref() async {
    sharedPref = await SharedPreferences.getInstance();
    print('============== SharedPreferences was initailaztion =============');

    return this;
  }
}
