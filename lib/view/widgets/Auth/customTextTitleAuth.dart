import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextTitle extends StatelessWidget {
  final String text;
  const CustomTextTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,);

  }
}