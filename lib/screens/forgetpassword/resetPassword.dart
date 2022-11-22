import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/resetpassword/resetpasswordcontroller.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/screens/Auth/customButtonAuth.dart';
import 'package:work_os/view/widgets/Auth/customTextFormField.dart';
import 'package:work_os/view/widgets/Auth/customTextTitleAuth.dart';

import '../../core/class/handelingdataview.dart';
import '../../core/class/statusrequest.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorApp.primaryColor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: ColorApp.grey)),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>
          HandelingDataRequest(statusRequest:controller.statusRequest,widget:Container(

        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitle(text: "35".tr),
          const SizedBox(height: 10),
          CustomTextTitle(text: "35".tr),
          const SizedBox(height: 15),
          CustomTextFormField(
            myController: controller.password,
            hintText: "13".tr,
            iconData: Icons.lock_outline,
            labelText: "19".tr, isNumber: false,
            // mycontroller: ,
          ),
          CustomTextFormField(
            myController: controller.repassword,
            hintText: "Re" + " " + "13".tr,
            iconData: Icons.lock_outline,
            labelText: "19".tr, isNumber: false,
            // mycontroller: ,
          ),
          CustomButtonAuth(
              text: "33".tr,
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 40),
        ]),
      ),
   ) ));
  }
}