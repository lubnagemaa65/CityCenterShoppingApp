import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:work_os/core/class/handelingdataview.dart';
import 'package:work_os/core/class/statusrequest.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/screens/Auth/customButtonAuth.dart';
import 'package:work_os/screens/Auth/customTextBodyAuth.dart';
import 'package:work_os/view/widgets/Auth/customTextFormField.dart';
import 'package:work_os/view/widgets/Auth/customTextTitleAuth.dart';

import '../../../controller/resetpassword/forgetPassController.dart';

class ForgetPassword extends StatelessWidget {

  ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
appBar: AppBar(
centerTitle: true,
backgroundColor: ColorApp.primaryColor,
elevation: 0.0,
title: Text('14'.tr,
style: Theme.of(context)
.textTheme
.headline1!
.copyWith(color: ColorApp.grey)),
),
body: GetBuilder<ForgetPasswordControllerImp>(builder: ((controller) => 
      HandelingDataRequest(statusRequest:controller.statusRequest,widget:Container(

padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
child: ListView(children: [
const SizedBox(height: 20),
 CustomTextTitle(text: "27".tr),
const SizedBox(height: 10),
 CustomTextBodyAuth(

 text:"29".tr,),
const SizedBox(height: 15),
CustomTextFormField(
   valid: (val){
    
  },
myController: controller.email,
hintText: "12".tr,
iconData: Icons.email_outlined,
labelText: "18".tr, isNumber: false,
// mycontroller: ,
),


CustomButtonAuth(text: "30".tr, onPressed: () {
  controller.checkemail();
}),
const SizedBox(height: 40),

]),
))
),));}
  }
