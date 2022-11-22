import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/onBoarding_controller.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/data/data-source/static/static.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
              ...List.generate(
        onBoardingList.length,
         (index) => AnimatedContainer(
           margin: EdgeInsets.only(right: 5,),
           duration: const Duration(milliseconds: 900),
           width: controller.currentPage==index? 20: 5,
           height: 6,
           decoration: BoxDecoration(
             color: ColorApp.primaryColor,
             borderRadius: BorderRadius.circular(10),
           ),
            ),
            ),
      

         ],
       )

    )  ;
 }}