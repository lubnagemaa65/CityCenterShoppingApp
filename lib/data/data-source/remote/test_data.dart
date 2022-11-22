

import 'package:work_os/core/class/crud.dart';
import 'package:work_os/view/linkapi.dart';

class TestData {
  
  Crud crud ; 

  TestData(this.crud) ; 

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r) ; 
  }


}