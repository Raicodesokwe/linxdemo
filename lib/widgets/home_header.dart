import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const  Text('Wallet 2',style: TextStyle(
            fontFamily: clashDisplay,
            fontWeight: FontWeight.w500,
            fontSize: 23
          ),),
        const Spacer(),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.appPurple.withOpacity(.1)
              ),
              child:const Center(
                child: Icon(Icons.add,color: Colors.black,),
              ),
            ),
            const SizedBox(width: 8,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                   padding: const EdgeInsets.all(15),
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.appDarkPurple
                  ),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(visaIcon,colorFilter:const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn, // Ensures the color is applied correctly
                            ),),
                  ),
                ),
                   Positioned(
              left: 50,
              child: Container(
                 padding: const EdgeInsets.all(15),
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appDarkPurple
                ),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(mastercardIcon,colorFilter:const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn, // Ensures the color is applied correctly
                          ),),
                ),
              ),
            ),
              ],
            ),   
          SizedBox(width: screenWidth(context) * .15,),
      ],
    );
  }
}

