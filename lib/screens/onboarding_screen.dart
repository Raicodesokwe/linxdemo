import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linxwalletdemo/utils/constants.dart';
import 'package:linxwalletdemo/widgets/title_text.dart';

import '../utils/common_functions.dart';
import '../utils/navigation_utils.dart';
import '../widgets/common_button.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appPurple,
        body: Column(
          children: [
             SizedBox(height: screenHeight(context) * .05,),
            SvgPicture.asset(onboardingBannerImage),
            SizedBox(height: screenHeight(context) * .05,),
          const TitleText(text: 'Linx, a user friendly crypto'),
          const TitleText(text: 'wallet built for DeFi & NFTs'),
           SizedBox(height: screenHeight(context) * .05,),
            GestureDetector(
                    onTap: (){
                      openScreen(context, const HomeScreen());
                    },
                    child:const CommonButton(label: 'Get Started'),
                  )
          ],
        ),
      ),
    );
  }
}