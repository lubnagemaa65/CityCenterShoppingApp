import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/productdetailscontroller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class SubitemsList extends GetView<ProductDetailsControllerImp> {
  const SubitemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subItems.length,
          (index) => Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 5),
            height: 60,
            width: 90,
            decoration: BoxDecoration(
                color: controller.subItems[index]['active'] == "1"
                    ? ColorApp.secondColor
                    : Colors.white,
                border: Border.all(color: ColorApp.secondColor),
                borderRadius: BorderRadius.circular(10)),
            child: Text(controller.subItems[index]['name'],
                style: TextStyle(
                    color: controller.subItems[index]['active'] == "1"
                        ? Colors.white
                        : ColorApp.secondColor,
                    fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}