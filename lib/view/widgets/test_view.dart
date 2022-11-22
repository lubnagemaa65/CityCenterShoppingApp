import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/controller/test_controller.dart';
import 'package:work_os/core/class/handelingdataview.dart';
import 'package:work_os/core/constant/color.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(

      appBar: AppBar(title: Text("Title") , 
      backgroundColor: ColorApp.primaryColor,
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandelingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text("${controller.data}");
                }));
      }),
    );
  }
}