import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linxwalletdemo/widgets/line_chart.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import 'image_circle.dart';

class CoinTile extends StatelessWidget {
  final String tileImage;
  final String amount;
  final String percentage;
  final String coinIcon;
  final String coinName;
  final String coinSymbol;
  const CoinTile({
    super.key,
    required this.tileImage,
    required this.amount,
    required this.percentage,
    required this.coinIcon,
    required this.coinName,
    required this.coinSymbol,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: screenWidth(context) * .4,
          child: SvgPicture.asset(tileImage)),
        Positioned(
          top: screenHeight(context) * .03,
          left: screenWidth(context) * .01,
          child: Column(
            children: [
              Text('\$$amount',style:const TextStyle(
              fontFamily: clashDisplay,
              fontWeight: FontWeight.w600,
              fontSize: 16
                              ),),
                              Row(
                                children: [
                                  SvgPicture.asset(arrowTrendUp),
                                  const SizedBox(width: 5,),
                                  Text(percentage)
                                ],
                              ),
                             SizedBox(
                              height: screenHeight(context) * .07,
                              child: const LineChartSample2()),
                              Row(
                                children: [
                                  ImageCircle(image: coinIcon,height: 25),
                                             const SizedBox(width: 5,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(coinName,style:const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16
                                                  ),),Text(coinSymbol,style: const TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black38,
                                                    fontSize: 14
                                                  ),),
                                                ],
                                              )
                                ],
                              ),
            ],
          ))
      ],
    );
  }
}

