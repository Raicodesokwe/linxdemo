import 'package:flutter/material.dart';

import '../utils/common_functions.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Color fontColor;
  final Color buttonColor;
  const ActionButton({
    super.key,
    required this.label,
    required this.fontColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: screenWidth(context) * .4,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Center(
        child: Text(label,style: TextStyle(
          fontWeight: FontWeight.w700,
          color: fontColor,
          fontSize: 17
        ),),
      ),
    );
  }
}

