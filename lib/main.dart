import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:work_os/bindings/initialbinding.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/core/localization/changeLocal.dart';
import 'package:work_os/core/localization/translation.dart';
import 'package:work_os/core/services/services.dart';
import 'package:work_os/data/models/onBoardingModel.dart';
import 'package:work_os/roots.dart';
import 'package:work_os/screens/Auth/login.dart';
import 'package:work_os/screens/Auth/signUp.dart';
import 'package:work_os/screens/language.dart';
import 'package:work_os/screens/onBoarding.dart';
import 'package:work_os/view/binding.dart';
import 'package:work_os/view/screens/auth/home.dart';

import 'view/screens/homescreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller= Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
     theme: controller.appTheme,
  home: const HomeScreen(),
  initialBinding: InitialBindings(),
  //routes: routes ,
  getPages: routes,
    );
  }
}