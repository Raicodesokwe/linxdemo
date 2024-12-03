import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linxwalletdemo/utils/common_functions.dart';
import 'package:linxwalletdemo/utils/constants.dart';
import 'package:linxwalletdemo/utils/navigation_utils.dart';
import 'package:linxwalletdemo/widgets/headline_text.dart';
import 'package:linxwalletdemo/widgets/image_circle.dart';
import 'package:linxwalletdemo/widgets/period_filter.dart';
import 'package:linxwalletdemo/widgets/second_line_chart.dart';

import '../widgets/coin_info.dart';
import '../widgets/floating_buttons.dart';


class CoinViewScreen extends StatefulWidget {
  const CoinViewScreen({super.key});

  @override
  State<CoinViewScreen> createState() => _CoinViewScreenState();
}

class _CoinViewScreenState extends State<CoinViewScreen> with TickerProviderStateMixin {
  
    late AnimationController _slideController;
late Animation<Offset> _offsetAnimation;
final Duration animDuration = const Duration(milliseconds: 250);
@override
  void initState() {
      _slideController =
      AnimationController(duration: const Duration(seconds: 1), vsync: this)
        ..forward();

  // Configure the SlideTransition animation
  _offsetAnimation = Tween<Offset>(begin: const Offset(0.0, 0.5), end: Offset.zero)
      .animate(CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeIn,
      ));
    super.initState();
  }
  @override
  void dispose() {
   _slideController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xFFE3DFF0),
      body: SlideTransition(
        position: _offsetAnimation,
        child: Stack(
          children: [
            Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  SizedBox(height: screenHeight(context) * .025,),
                     GestureDetector(
                      onTap: (){
                        navigationPop(context);
                      },
                       child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration:const BoxDecoration(
                            color:Colors.white,
                            shape: BoxShape.circle
                          ),
                          child:const SizedBox(
                            height: 50,
                            child: Icon(Icons.arrow_back)),
                        ),
                     ),
                const Center(child:  ImageCircle(image: ethereumIcon,height: 50,color: Colors.white,)),
                 const Center(child: HeadlineText(label: 'ETH')),
                 SizedBox(height: screenHeight(context) * .02,),
                const  Center(
                    child:  Text('\$3672.54',style: TextStyle(
                          color: Colors.black,
                          fontFamily: clashDisplay,
                          fontWeight: FontWeight.w600,
                          fontSize: 27
                        ),),
                  ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SvgPicture.asset(arrowTrendUp),
                             const Text('\$9.10 (1.58%)',style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                         
                        ),),
                           ],
                         ),
                               SizedBox(height: screenHeight(context) * .035,),
                              const PeriodFilter(),
                               SizedBox(height: screenHeight(context) * .035,),
                              const SecondLineChart(),
                              SizedBox(height: screenHeight(context) * .025,),
                          const CoinInfo(infoText: 'Opening price',price: '3556.87'),
                          const Divider(),
                          const CoinInfo(infoText: 'Previous closing price',price: '3457.87'),
                          const Divider(),
                           const CoinInfo(infoText: 'Highest price of the day',price: '3653.87'),
                          const Divider(),
                          SizedBox(height: screenHeight(context) * .2,),
                     
                  ],
                ),
              ),
            ),
            const FloatingButtons()
          ],
        ),
      ),
    ));
  }
}

