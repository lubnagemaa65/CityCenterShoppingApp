

import 'package:work_os/core/class/crud.dart';
import 'package:work_os/view/linkapi.dart';

class LoginData {
  
  Crud crud ; 

  LoginData(this.crud) ; 

  postData(String username,String password) async {
    var response = await crud.postData(AppLink.login, {
      "username": username ,
      "password":  password,
     

    });
    return response.fold((l) => l, (r) => r) ; 
  }


}