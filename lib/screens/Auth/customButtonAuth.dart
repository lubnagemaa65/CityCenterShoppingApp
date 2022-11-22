import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:work_os/core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
 final String text;
 final void Function() onPressed;
  const CustomButtonAuth({Key? key, required this.text, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin:  EdgeInsets.only(top: 10,),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        textColor: Colors.white,
        color: ColorApp.primaryColor),
    );
  }
}