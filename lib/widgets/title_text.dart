import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key,
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    return   Text(text,style:const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23,
              color: Colors.white
            ),);
  }
}