import 'package:flutter/material.dart';
import 'package:linxwalletdemo/screens/coin_view_screen.dart';
import 'package:linxwalletdemo/utils/constants.dart';
import 'package:linxwalletdemo/utils/navigation_utils.dart';

import '../utils/common_functions.dart';
import '../widgets/asset_list.dart';
import '../widgets/coin_tile.dart';
import '../widgets/headline_text.dart';
import '../widgets/home_header.dart';
import '../widgets/image_circle.dart';
import '../widgets/transaction_selection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
   controller =
        AnimationController(vsync: this, duration:const Duration(milliseconds: 200));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(const Duration(milliseconds: 600), () {
      controller.forward().then((value) => scaleController.forward());
    });
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FadeTransition(
        opacity: fadeAnimation,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight(context) * .025,),
               const HomeHeader(),
                // SizedBox(height: screenHeight(context) * .01,),
              const HeadlineText(label: 'Current value',),
                //  SizedBox(height: screenHeight(context) * .01,),
               const Text('\$30,450.00',style: TextStyle(
                  color: Colors.black,
                  fontFamily: clashDisplay,
                  fontWeight: FontWeight.w600,
                  fontSize: 27
                ),),
                SizedBox(height: screenHeight(context) * .01,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    const TransactionSelection(quarterTurns: 1,label: 'Transfer',isTransfer: true,),
                    Container(
               padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: AppColors.appPurple.withOpacity(.1),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child:  ImageCircle(image: exchangeIcon,color: AppColors.appPurple.withOpacity(.5),height: 25,)
                    
                    ),
                    const TransactionSelection(quarterTurns: 3,label: 'Receive',isTransfer: false,),
                 ],
               ),
               SizedBox(height: screenHeight(context) * .02,),
                const HeadlineText(label: 'Favourites',),
                SizedBox(height: screenHeight(context) * .025,),
                         ScaleTransition(
                          scale: scaleAnimation,
                           child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                               const CoinTile(amount: '1467.64',coinIcon: rippleIcon,coinName: 'Ripple',coinSymbol: 'XRP',percentage: '+9.0%',tileImage: rippleTileImage,),
                                             GestureDetector(
                                                 onTap: (){
                                                   openScreen(context,const CoinViewScreen());
                                                 },
                                               child: const CoinTile(amount: '3672.54',coinIcon: ethereumIcon,coinName: 'Ethereum',coinSymbol: 'ETH',percentage: '+1.4%',tileImage: ethereumTileImage,)),
                                            ],
                                          ),
                         ),
                SizedBox(height: screenHeight(context) * .02,),
               const Row(
                  children: [
                     HeadlineText(label: 'Assets',),
                     Spacer(),
                     Icon(Icons.settings,color: Colors.black38,),
                     Text('Customize',style:  TextStyle(
                     color: Colors.black38,
                     fontWeight: FontWeight.w600,
                     fontSize: 15
                   ),)
                  ],
                ),
               
                SizedBox(height: screenHeight(context) * .025,),
               const AssetList(),
                const SizedBox(height: 50,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

