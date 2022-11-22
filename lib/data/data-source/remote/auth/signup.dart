

import 'package:work_os/core/class/crud.dart';
import 'package:work_os/view/linkapi.dart';

class SignupData {
  
  Crud crud ; 

  SignupData(this.crud) ; 

  postData(String username,String password,String email,String phone) async {
    var response = await crud.postData(AppLink.signUp, {
      "username": username ,
      "password":  password,
      "email": email ,
      "phone": phone ,

    });
    return response.fold((l) => l, (r) => r) ; 
  }


}