import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/Auth/SignUpController.dart';
import 'package:work_os/core/class/handelingdataview.dart';
import 'package:work_os/core/class/statusrequest.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/core/functions/alertexitapp.dart';
import 'package:work_os/screens/Auth/customButtonAuth.dart';
import 'package:work_os/screens/Auth/customTextBodyAuth.dart';
import 'package:work_os/screens/Auth/customTextSignUP.dart';
import 'package:work_os/view/widgets/Auth/customTextFormField.dart';
import 'package:work_os/view/widgets/Auth/customTextTitleAuth.dart';

class SignUp extends StatelessWidget {
const SignUp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
centerTitle: true,
backgroundColor: ColorApp.primaryColor,
elevation: 0.0,
title: Text('Sign Up',
style: Theme.of(context)
.textTheme
.headline1!
.copyWith(color: ColorApp.grey)),
),
body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(builder: (controller) => 
      HandelingDataRequest(statusRequest:controller.statusRequest,widget:Container(
padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
child: ListView(children: [
const SizedBox(height: 20),
const CustomTextTitle(text: "Welcome Back"),
const SizedBox(height: 10),
const CustomTextBodyAuth(

 text: "Sign Up With Your Email And Password OR Continue With Social Media",),
const SizedBox(height: 15),
CustomTextFormField(
  valid: (val){

  },
myController: controller.userName,
hintText: "Enter Your Username",
iconData: Icons.person_outline,
labelText: "Username", isNumber: false,
// mycontroller: ,
),
CustomTextFormField(
   valid: (val){
    
  },
myController: controller.email,
hintText: "Enter Your Email",
iconData: Icons.email_outlined,
labelText: "Email", isNumber: false,
// mycontroller: ,
),
CustomTextFormField(
   valid: (val){
    
  },
myController: controller.phone,
hintText: "Enter Your Phone",
iconData: Icons.phone_android_outlined,
labelText: "Phone", isNumber: true,
// mycontroller: ,
),
CustomTextFormField(
   valid: (val){
    
  },
myController: controller.password,
hintText: "Enter Your Password",
iconData: Icons.lock_outline,
labelText: "Password", isNumber: false,
// mycontroller: ,
),

CustomButtonAuth(text: "Sign Up", onPressed: () {
  controller.signUp();
}),
const SizedBox(height: 40),
CustomTextSignUp(
textOne: " have an account ? ",
textTow: " SignIn ",
onTap: () {
controller.goToSignIn();
},
),
]),
))
)

));
}
}