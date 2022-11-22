import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/Auth/loginController.dart';
import 'package:work_os/core/class/handelingdataview.dart';
import 'package:work_os/core/class/statusrequest.dart';
import 'package:work_os/core/class/statusrequest.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/core/functions/alertexitapp.dart';
import 'package:work_os/core/functions/validation.dart';
import 'package:work_os/screens/Auth/customButtonAuth.dart';
import 'package:work_os/screens/Auth/customTextBodyAuth.dart';
import 'package:work_os/screens/Auth/customTextSignUP.dart';
import 'package:work_os/screens/Auth/logoAuth.dart';
import 'package:work_os/view/widgets/Auth/customTextFormField.dart';
import 'package:work_os/view/widgets/Auth/customTextTitleAuth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorApp.primaryColor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: ColorApp.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child:GetBuilder<LoginControllerImp>(builder: ((controller) => 
       HandelingDataRequest(statusRequest:controller.statusRequest!,widget:Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const LogoAuth(),
            const SizedBox(height: 20),
            CustomTextTitle(text: "10".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "11".tr),
            const SizedBox(height: 15),
            CustomTextFormField(
              isNumber: false ,

              valid: (val) {
                return validateInput(val!, 5, 25, "email");
              },
              myController: controller.email,
              hintText: "12".tr,
              iconData: Icons.email_outlined,
              labelText: "18".tr,
              // mycontroller: ,
            ),
            GetBuilder<LoginControllerImp>(builder: (controller)=>       CustomTextFormField(
              isNumber: false ,
              obscureText: controller.isshowpassword,
              onTapIcon: (){
                controller.showPassword();
              },

              valid: (val) {
                return validateInput(val!, 5,30 , "password");
              },
              myController: controller.password,
              hintText: "13".tr,
              iconData: Icons.lock_outline,
              labelText: "19".tr,
              // mycontroller: ,
            ),
       ),
          InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: Text(
                "14".tr,
                textAlign: TextAlign.right,
              ),
            ),
            CustomButtonAuth(
                text: "15".tr,
                onPressed: () {
                  controller.login();
                }),
            const SizedBox(height: 40),
            CustomTextSignUp(
              textOne: "16".tr,
              textTow: "17".tr,
              onTap: () {
                controller.goToSignUp();
              },
            )
          ]),
        ),
      ))
    ),)) );
  }
}