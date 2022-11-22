import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/Auth/successResetPassController.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/screens/Auth/customButtonAuth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller=Get.put(SuccessResetPasswordControllerImp())  ;

  return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        backgroundColor: ColorApp.primaryColor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: ColorApp.grey)),
   
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
child: Column(

 children: [
Center(child: Icon(Icons.check_circle_outline,size: 200,color: Colors.green,)),
Text("37".tr , style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30)),
          Text("36".tr),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: "31".tr,
                onPressed: () {
                  // controller.signUp();
                }),
          ),
   SizedBox(height: 30)
        ]),
      ),
    );
  }
}