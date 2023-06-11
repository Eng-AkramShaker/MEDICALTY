import 'package:get/get.dart';
class AppSettingController extends GetxController{


 var isPressed1 = false.obs;
  var isPressed2 = false.obs;
  final List<String> items = [
    'English',
    'Spanish',
    'Chinese',
    'Japanese',
    'French',
    'German',
    'Russian',
    'Portugues',
    'Italian',
    'Korean'
  ];

  late var selectedItem = items[0].obs;

  void updateSelectedItem(String item) {
    selectedItem.value = item;
  }

  
}