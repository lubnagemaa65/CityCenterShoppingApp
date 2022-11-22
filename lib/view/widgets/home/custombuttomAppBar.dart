import 'package:flutter/material.dart';
import 'package:work_os/core/constant/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final bool? active   ;
  const CustomButtonAppBar(
      {Key? key,
      required this.textbutton,
      required this.icondata,
      required this.onPressed,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(icondata,
            color: active == true ? ColorApp.primaryColor : ColorApp.grey2),
        Text(textbutton,
            style: TextStyle(
                color: active == true ? ColorApp.primaryColor :ColorApp.grey2))])
    );
  }
}