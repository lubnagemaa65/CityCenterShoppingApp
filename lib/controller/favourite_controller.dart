import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/core/services/services.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdata.dart';
import '../data/data-source/remote/favourite_data.dart';

class FavouriteController extends GetxController{
  Map isFavourite={};
  List data = [];
  late StatusRequest statusRequest;
  FavouriteData favouriteData = FavouriteData(Get.find());
  MyServices myServices=Get.find();



  setFavourite(id,val){
isFavourite[id]=val;
  }

  addFavourites(String itemsid) async {
    //we have to clear data when navigation between categories
    //we pass the userid via sharedpreference
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favouriteData.addFavourites(
      myServices.sharedPreferences.getString("id")!,itemsid);

    
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        //data.addAll(response['data']);
                Get.rawSnackbar(title: "notification",messageText: Text("adding item is Done!"));

      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  
  removeFavourites(String itemsid) async {
    //we have to clear data when navigation between categories
    //we pass the userid via sharedpreference
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favouriteData.removeFavourites(
      myServices.sharedPreferences.getString("id")!,itemsid);

    
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        //data.addAll(response['data']);
        Get.rawSnackbar(title: "notification",messageText: Text("removing item is Done!"));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

}
