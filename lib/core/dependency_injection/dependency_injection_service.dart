import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

init() async{

  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences, fenix: true);
}