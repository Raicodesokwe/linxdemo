import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../models/asset_model.dart';
import '../utils/constants.dart';
import 'image_circle.dart';
class AssetList extends StatelessWidget {
  const AssetList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children:List.generate(assetList.length, (index) =>  AnimationConfiguration.staggeredList(
         position: index,
                 duration: const Duration(seconds: 1),
        child: SlideAnimation(
          verticalOffset: 50.0, 
          child: Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: ListTile(
                tileColor: AppColors.appPurple.withOpacity(.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                leading: ImageCircle(image: assetList[index].assetIcon),
                title: Text(assetList[index].assetName,style:const TextStyle(
                  fontWeight: FontWeight.w600
                ),),
                subtitle: Text(assetList[index].assetSymbol),
                trailing: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text('\$${assetList[index].assetPrice}',style:const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16
                ),),
                 Text(assetList[index].assetPercentage)
                  ],
                ),
              ),
          ),
        ),
      ),)
    );
  }
}

