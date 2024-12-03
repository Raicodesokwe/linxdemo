import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  final String label;
  final Color? fontColor;
  final FontWeight? fontWeight;
  const HeadlineText({
    super.key,
    required this.label,
    this.fontColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(label,style:  TextStyle(
       color: fontColor?? Colors.black38,
       fontWeight:fontWeight?? FontWeight.w600,
       fontSize: 17
     ),);
  }
}