import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';

class TransactionSelection extends StatelessWidget {
  final int quarterTurns;
  final String label;
  final bool isTransfer;
  const TransactionSelection({
    super.key,
    required this.quarterTurns,
    required this.label,
    required this.isTransfer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.appPurple.withOpacity(.1),
        borderRadius: BorderRadius.circular(30)
      ),
      child: isTransfer? Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.appPurple.withOpacity(.5),
              shape: BoxShape.circle
            ),
            child: SizedBox(
              height: 25,
              child: RotatedBox(
                quarterTurns: quarterTurns,
                child: SvgPicture.asset(sendIcon))),
          ),
          const SizedBox(width: 15,),
          Text(label,style:const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17
          ),),
          SizedBox(width: screenWidth(context) * .015,)
        ],
      ):Row(
        mainAxisSize: MainAxisSize.min,
        children: [
         
         SizedBox(width: screenWidth(context) * .015,),
          Text(label,style:const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17
          ),),
           const SizedBox(width: 15,),
            Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.appPurple.withOpacity(.5),
              shape: BoxShape.circle
            ),
            child: SizedBox(
              height: 25,
              child: RotatedBox(
                quarterTurns: quarterTurns,
                child: SvgPicture.asset(sendIcon))),
          ),
          
        ],
      ),
    );
  }
}