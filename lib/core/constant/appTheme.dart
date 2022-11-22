import 'package:flutter/material.dart';
import 'package:work_os/core/constant/color.dart';

ThemeData themeEnglish=  ThemeData(
  fontFamily: 'PlayFairDisplay',
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,) ,
          headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,) ,

          
          bodyText1:  TextStyle(
            height: 2,
            color: ColorApp.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),

      );
  
  ThemeData themeArabic=  ThemeData(
    fontFamily: 'Cairo',
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,) ,
          headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,) ,

          
          bodyText1:  TextStyle(
            height: 2,
            color: ColorApp.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),

      );
  