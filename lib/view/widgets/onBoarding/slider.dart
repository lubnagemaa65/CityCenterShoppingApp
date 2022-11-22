import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/onBoarding_controller.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/data/data-source/static/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return PageView.builder( 
     scrollBehavior : AppScrollBehavior(),

     controller: controller.pageController,
     onPageChanged: (value) {
       controller.onPageChanged(value);
     },
              itemCount : onBoardingList.length,
          
              itemBuilder: (Context,i) => Column(
                children: [
                 Text( onBoardingList[i].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black,)),
                 SizedBox(height: 80,),
                 Image.asset(onBoardingList[i].image,
                // width: 200,
                 height: Get.width/1.1,
                 fit: BoxFit.fill,),
                  SizedBox(height: 60,),
          
                 Container(
                   width: double.infinity,
                   alignment: Alignment.center,
                   child: Text( onBoardingList[i].body,textAlign: TextAlign.center,style:TextStyle(height: 2,fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey, ),),
                )  ],
          
             
          
          
            ),
            
            ); 
  }
  
}
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
      
}
