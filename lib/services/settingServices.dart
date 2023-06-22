// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, avoid_print

import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../api/functions/check_internet.dart';

Box? myBox;

class SettingServices extends GetxService {
  Future<Box> openHiveBox(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    print('============== myBox was initailaztion =============');
    return await Hive.openBox(boxName);
  }

  Future<SettingServices> init() async {
    checkInternet();

    return this;
  }
}
