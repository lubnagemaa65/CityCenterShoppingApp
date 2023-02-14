import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/core/constant/roots.dart';

import '../../controller/favourite_controller.dart';
import '../../controller/itemscontroller.dart';
import '../../core/class/handelingdataview.dart';
import '../../data/models/itemsModel.dart';
import '../widgets/customAppBar.dart';
import '../widgets/items/customlistitems.dart';
import '../widgets/items/listcategoriesitems.dart';


class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    Get.put(FavouriteController());


    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
              titleappbar: "Find Product",
              
              onPressedSearch: () {}, 
              onPressedFavorite: () { 
                Get.toNamed(AppRoute.myFavourites);               },),
          const SizedBox(height: 20),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandelingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, index) {
                       
                        return CustomListItems( 
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]), active: false,);
                      })))
        ]),
      ),
    );
  }
}


// favoriteController.isFavorite[controller.data[index]
                            // ['items_id']] = controller.data[index]['favorite'];