

import 'package:work_os/core/class/crud.dart';
import 'package:work_os/view/linkapi.dart';

class VerifyCodeSignupData {
  
  Crud crud ; 

  VerifyCodeSignupData(this.crud) ; 

  postData(String email,String verifyCode) async {
    var response = await crud.postData(AppLink.verifycodesignup, {
     
      "email": email ,
      "verifycode":verifyCode,
      

    });
    return response.fold((l) => l, (r) => r) ; 
  }


}