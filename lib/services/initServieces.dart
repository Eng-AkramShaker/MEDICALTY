
//============= Services =================
import 'package:Medicalty/services/settingServices.dart';
import 'package:get/get.dart';

Future initialServices() async {
  //===================== Init check internet ===============
  await Get.putAsync(() => SettingServices().init());
  //==================== open Hive Box ======================
  await Get.putAsync(
    () => SettingServices().openHiveBox('medical'));
  myBox = await SettingServices().openHiveBox('medical');
  //===================== Init check internet ===============
  await Get.putAsync(() => SettingServices().initSharedPref());

}

