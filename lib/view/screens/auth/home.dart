
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:work_os/core/class/handelingdataview.dart';
import 'package:work_os/view/widgets/customAppBar.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color.dart';
import '../../linkapi.dart';
import '../../widgets/home/customcarditem.dart';
import '../../widgets/home/customtitlehome.dart';
import '../../widgets/home/listcategorieshome.dart';
import '../../widgets/home/listitemhome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return 
       GetBuilder<HomeControllerImp>(
          builder: (controller) => HandelingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      CustomAppBar(
                          titleappbar: "Find Product",
                          onPressedIcon: () {},
                          onPressedSearch: () {}, 
                          onPressedFavorite: () {  },),
                      const CustomCardHome(
                          title: "A summer surprise", body: "Cashback 20%"),
                      const CustomTitleHome(title: "Categories"),
                      const ListCategoriesHome(),
                      
                     
                      const CustomTitleHome(title: "Product for you"),
                      
                      const ListItemsHome(), 
                      const CustomTitleHome(title: "Offer"),
                      const ListItemsHome()
                    ],
                  ))));
   
  }
}