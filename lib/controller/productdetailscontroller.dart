import 'package:get/get.dart';
import 'package:work_os/data/models/itemsModel.dart';

abstract class ProductDetailsController extends GetxController{

}
class ProductDetailsControllerImp extends ProductDetailsController{
  late ItemsModel itemsModel;
  initialData(){
    itemsModel=Get.arguments["itemsModel"];
  }
  List subItems=[{
"name":"red",
"name":"black",
"name":"yellow"
 } ];
  @override
  void onInit() {
   initialData();
    super.onInit();
  }
}