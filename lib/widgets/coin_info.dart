import 'package:flutter/material.dart';

import 'headline_text.dart';

class CoinInfo extends StatelessWidget {
  final String infoText;
  final String price;
  const CoinInfo({
    super.key,required this.infoText,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         HeadlineText(label: infoText,fontColor: Colors.black45,fontWeight: FontWeight.w600,),
           Text('\$$price',style:const TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                     
                    ),),
       ],
     );
  }
}