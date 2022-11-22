import 'package:get/get.dart';
import 'package:work_os/core/constant/roots.dart';

abstract class SuccessSignUpController extends GetxController{
goToPageLogin();
}
class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToPageLogin() {
  Get.offAllNamed(AppRoute.login);
  }

}