import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? buttonColor;
  const CommonButton({super.key,
  required this.label,
   this.height,
   this.width,
   this.fontSize,
   this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                      height:height?? 50,
                      width:width?? screenWidth(context) * .8,
                      decoration: BoxDecoration(
                        color:buttonColor?? Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              child: SvgPicture.asset(walletIcon,colorFilter:const ColorFilter.mode(
          AppColors.appDarkPurple,
          BlendMode.srcIn, // Ensures the color is applied correctly
        ),)),
       const SizedBox(width: 10,),
                            Text(label,style: TextStyle(
                              color: AppColors.appDarkPurple,
                              fontWeight: FontWeight.w600,
                              fontSize:fontSize?? 17
                            ),),
                          ],
                        ),
                      ),
                    );
  }
}