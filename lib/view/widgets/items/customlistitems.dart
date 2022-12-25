import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/favourite_controller.dart';
import 'package:work_os/controller/itemscontroller.dart';
import 'package:work_os/controller/productdetailscontroller.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/core/functions/translatedatabase.dart';
import 'package:work_os/data/models/itemsModel.dart';
import 'package:work_os/view/linkapi.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  final bool active;
  const CustomListItems({
    Key? key,
    required this.itemsModel,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: "${itemsModel.itemsId}",
                    child: CachedNetworkImage(
                      imageUrl:
                          AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      translateDataBase(
                          itemsModel.itemsNameAr, itemsModel.itemsName),
                      style: TextStyle(
                          color: ColorApp.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rating 3.5 ", textAlign: TextAlign.center),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 22,
                        child: Row(
                          children: [
                            ...List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      size: 15,
                                    ))
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${itemsModel.itemsPrice} \$",
                          style: TextStyle(
                              color: ColorApp.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "sans")),
                      GetBuilder<FavouriteController>(
                          builder: (controller) => IconButton(
                              onPressed: () {
                                if (controller
                                        .isFavourite[itemsModel.itemsId] ==
                                    '1') {
                                  controller.setFavourite(
                                      itemsModel.itemsId, '0');
                                  controller
                                      .removeFavourites(itemsModel.itemsId!);
                                } else {
                                  controller.setFavourite(
                                      itemsModel.itemsId, '1');
                                  controller.addFavourites(itemsModel.itemsId!);
                                }
                              },
                              icon: Icon(
                                controller.isFavourite[itemsModel.itemsId] ==
                                        '1'
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: ColorApp.primaryColor,
                              )))
                    ],
                  )
                ]),
          ),
        ));
  }
}
