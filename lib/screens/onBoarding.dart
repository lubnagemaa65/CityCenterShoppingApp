import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/onBoarding_controller.dart';
import 'package:work_os/view/widgets/onBoarding/controller.dart';
import 'package:work_os/view/widgets/onBoarding/customButton.dart';
import 'package:work_os/view/widgets/onBoarding/slider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: 

      //we use pageview for swipping
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomSlider(),
            ),

          Expanded 
          (flex: 1,
            child: Column(
              children:const [
                CustomDotController(),
                  Spacer(flex: 1,),
                 CustomButton(),
              ],
            )),
     
     
         ],
         ),
      ));
    
  }
}