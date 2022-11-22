

import 'package:work_os/core/class/crud.dart';
import 'package:work_os/view/linkapi.dart';

class HomeData {
  
  Crud crud ; 

  HomeData(this.crud) ; 

  getData() async {
    var response = await crud.postData(AppLink.homePage, {});
    return response.fold((l) => l, (r) => r) ; 
  }


}