import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'action_button.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Align(
             alignment: Alignment.bottomCenter,
             child:  Padding(
               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     ActionButton(label: 'Sell',fontColor: Colors.black,buttonColor: AppColors.appYellow,),
                     ActionButton(label: 'Buy',fontColor: Colors.white,buttonColor: AppColors.appDarkPurple,),
                  ],
                ),
             ),
           );
  }
}

