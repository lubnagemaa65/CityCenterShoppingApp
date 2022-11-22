
import 'package:get/get.dart';
import 'package:work_os/core/class/statusrequest.dart';
import 'package:work_os/core/functions/handlingdata.dart';
import 'package:work_os/data/data-source/remote/test_data.dart';

class TestController extends GetxController{
  TestData testData =TestData(Get.find());
  List data =[];
  late StatusRequest statusRequest;
  getData()async {
    statusRequest =StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if(StatusRequest.success==statusRequest){
      // when there is a crud in data
      data.addAll(response['data']);
    } else{
      // there is no data neither an update.
      statusRequest=StatusRequest.failure;
    }
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}