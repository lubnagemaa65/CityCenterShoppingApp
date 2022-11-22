import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:work_os/core/class/statusrequest.dart';
import 'package:work_os/core/constant/roots.dart';
import 'package:work_os/screens/forgetpassword/verifyCode.dart';

import '../../core/functions/handlingdata.dart';
import '../../data/data-source/remote/auth/signup.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();

}
class SignUpControllerImp extends SignUpController{

   GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
  late TextEditingController userName;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  
   StatusRequest? statusRequest=StatusRequest.none;
  SignupData signupData =SignupData(Get.find());
  List data =[];


  @override
  signUp() async {
    if (formstate.currentState!.validate()){
      statusRequest =StatusRequest.loading;
      update();
    var response = await signupData.postData(userName.text,password.text,email.text,phone.text);
    statusRequest = handlingData(response);
    if(StatusRequest.success==statusRequest){
      // when there is a crud in data
      //data.addAll(response['data']);
      Get.offNamed(AppRoute.verifyCodeSignUp, arguments: {
        "email":email.text,
        "verifycode":VerifyCode
      });

    } else{
      // there is no data neither an update.
   Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ; 
  statusRequest = StatusRequest.failure;
    }
    update();

    }
//Get.delete <SignUpController>();
  }
  
  @override
  goToSignIn() {
   Get.offNamed(AppRoute.login);
  }
  @override
  void onInit() {
    userName=TextEditingController();
    phone=TextEditingController();
    email=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
@override
  void dispose() {
    userName.dispose();
    phone.dispose();
   email.dispose();
   password.dispose();
    super.dispose();
  }
}