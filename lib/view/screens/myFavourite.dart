
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/myFavorite_controller.dart';
import '../../core/class/handelingdataview.dart';
import '../../core/constant/roots.dart';
import '../widgets/customAppBar.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  CustomAppBar(
                    titleappbar: "Find Product",
                    
                    onPressedSearch: () {},
                    onPressedFavorite: () {
                      Get.toNamed(AppRoute.myFavourites);
                    }, 
                  ),
                  HandelingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Text(controller.data[index].itemsName!);
                        },
                      ))
                ]))),
      ),
    );
  }
}
