import 'package:get/get.dart';
import 'package:work_os/core/middleware/myMiddleWare.dart';
import 'package:work_os/screens/Auth/login.dart';
import 'package:work_os/screens/Auth/signUp.dart';
import 'package:work_os/screens/Auth/successSignUp.dart';
import 'package:work_os/screens/Auth/verifyCodeSignUp.dart';
import 'package:work_os/screens/forgetpassword/successreset.dart';
import 'package:work_os/screens/language.dart';
import 'package:work_os/screens/onBoarding.dart';
import 'package:work_os/test.dart';
import 'package:work_os/view/screens/auth/home.dart';
import 'package:work_os/view/screens/homescreen.dart';
import 'package:work_os/view/screens/items.dart';
import 'package:work_os/view/screens/myFavourite.dart';
import 'package:work_os/view/screens/productdetails.dart';

import 'core/constant/roots.dart';
import 'screens/forgetpassword/forgetPassword.dart';
import 'screens/forgetpassword/resetPassword.dart';
import 'screens/forgetpassword/verifyCode.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language() , middlewares: [
  //   MyMiddleWare()
  // ]),
  GetPage(name: "/", page: () =>  ProductDetails() ), 
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetpassword, page: () =>  ForgetPassword()),
  GetPage(name: AppRoute.verifycode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoardingScreen()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  GetPage(name: AppRoute.homescreen, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.myFavourites, page: () => const MyFavorite()),


  


];