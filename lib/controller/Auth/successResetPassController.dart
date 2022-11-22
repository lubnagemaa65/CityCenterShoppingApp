import 'package:get/get.dart';
import 'package:work_os/core/constant/roots.dart';

abstract class SuccessResetPasswordController extends GetxController{
goToPageLogin();
}
class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goToPageLogin() {
  Get.offAllNamed(AppRoute.login);
  }

}