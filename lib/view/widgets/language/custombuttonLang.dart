import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:work_os/core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()?onPressed;
  const CustomButtonLang({Key? key, required this.textButton, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                    textColor: Colors.white,
                    color: ColorApp.primaryColor,
                    onPressed: (){},
                    child:  Text(textButton,style: TextStyle(fontWeight: FontWeight.bold)
                    ,
    ));
               
  }
}