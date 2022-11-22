

import 'package:work_os/core/class/crud.dart';
import 'package:work_os/view/linkapi.dart';

class FavouriteData {
  
  Crud crud ; 

  FavouriteData(this.crud) ; 

  addFavourites(String usersid,String itemsid) async {
    var response = await crud.postData(AppLink.favouriteAdd, {"userid":usersid,"itemsid":itemsid});
    return response.fold((l) => l, (r) => r) ; 
  }

 removeFavourites(String usersid,String itemsid) async {
    var response = await crud.postData(AppLink.favouriteRemove, {"userid":usersid,"itemsid":itemsid});
    return response.fold((l) => l, (r) => r) ; 
  }
}