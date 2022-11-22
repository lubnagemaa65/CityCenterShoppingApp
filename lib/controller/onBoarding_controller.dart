import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:work_os/core/constant/roots.dart';
import 'package:work_os/core/services/services.dart';
import 'package:work_os/data/data-source/static/static.dart';

abstract class OnBoardingController extends GetxController{
  next();//to swip between onboarding pages
  onPageChanged(int index);//to link the dot bar with suitable page
}
class OnBoardingControllerImp extends OnBoardingController{
 
 late PageController pageController;
 int currentPage=0;
 MyServices myServices=Get.find();
  @override
  next() {
  currentPage++;
 pageController.animateToPage(currentPage, duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
      
      if(currentPage>onBoardingList.length-1){
   Get.offAllNamed(AppRoute.login) ; 
       myServices.sharedPreferences.setString("step", "1") ; 

      }else{
    pageController.animateToPage(currentPage, duration: const Duration(microseconds: 900), curve: Curves.easeInOut);

      }

  }

  @override
  onPageChanged(int index) {
   currentPage=index;
   update();
  }
@override
  void onInit() {
pageController=PageController();
    super.onInit();
  }
}