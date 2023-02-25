



import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyPrefs extends GetxController{
  final data=GetStorage();
  Future<void> initStroage()async{
    await GetStorage.init();
  }
  final remember=false.val('remember_pass');
  final language=false.val("langauage");
  final obscure=false.val("obscure");



}