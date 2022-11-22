import 'package:get/get.dart';
import 'package:work_os/core/services/services.dart';

translateDataBase(columnar,columnen){
  MyServices myServices=Get.find();
  if(myServices.sharedPreferences.getString("lang")=="ar"){
return columnar;
  }else {
return columnen;
  }
  
}