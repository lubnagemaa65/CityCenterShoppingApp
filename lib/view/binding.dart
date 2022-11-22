import 'package:get/get.dart';
import 'package:work_os/controller/Auth/SignUpController.dart';

class   MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(),fenix: true);
  }

}