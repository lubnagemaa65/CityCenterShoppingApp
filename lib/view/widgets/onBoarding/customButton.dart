
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/onBoarding_controller.dart';
import 'package:work_os/core/constant/color.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         height: 45,
         margin: EdgeInsets.only(bottom: 30,),
         child: MaterialButton(
           onPressed: (){
             controller.next();
           },
         child: Text('continue'),
         color: ColorApp.primaryColor,
         padding: EdgeInsets.symmetric(horizontal: 100),
         textColor: Colors.white,
         
         ),
       );
    
  }
}