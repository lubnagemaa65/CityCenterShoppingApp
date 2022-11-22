import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/core/constant/color.dart';

import '../../controller/productdetailscontroller.dart';
import '../widgets/productdetails.dart/priceamount.dart';
import '../widgets/productdetails.dart/subItemsList.dart';
import '../widgets/productdetails.dart/topproductpagedetails.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: ColorApp.secondColor,
                onPressed: () {},
                child: const Text(
                  "Add To Cart",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
        body: ListView(children: [
          const TopProductPageDetails(),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("${controller.itemsModel.itemsName}",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: ColorApp.secondColor,
                      )),
              const SizedBox(height: 10),
              PriceAndCountItems(
                  onAdd: () {}, onRemove: () {}, price: "200.0", count: "2"),
              const SizedBox(height: 10),
              Text("${controller.itemsModel.itemsDesc}",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: ColorApp.grey2)),
              const SizedBox(height: 10),
              Text("Color",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: ColorApp.secondColor,
                      )),
              const SizedBox(height: 10),
              const SubitemsList()
            ]),
          )
        ]));
  }
}