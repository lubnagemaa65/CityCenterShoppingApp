import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/home_controller.dart';
import 'package:work_os/controller/itemscontroller.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/core/functions/translatedatabase.dart';
import 'package:work_os/data/models/categoriesModel.dart';
import 'package:work_os/view/linkapi.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key,  int? itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]), 
          );
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories( {Key? key, required this.categoriesModel,required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //controller.goToItems(controller.categories,i!,categoriesModel.categoriesId!);
        controller.changeCat(i!,categoriesModel.categoriesId!);

      },
      child: GetBuilder<ItemsControllerImp>(builder: (controller) =>   Column(
        children: [

          Container(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0),
            decoration:controller.selectedCat==i ? const BoxDecoration(border:
             Border(bottom: BorderSide(width:3,color:ColorApp.primaryColor)),):null,
            child: Text(
              "${translateDataBase(categoriesModel.categoriesNameAr,categoriesModel.categoriesName)}",
              style: const TextStyle(fontSize: 20, color: ColorApp.grey2),
            ),
          )
        ],
      ),
    ),
    );
  }
}