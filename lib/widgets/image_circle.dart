import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageCircle extends StatelessWidget {
  final String image;
  final Color? color;
  final double? height;
  const ImageCircle({
    super.key,
    required this.image,
     this.color,
     this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color??Colors.white,
                  shape: BoxShape.circle
                ),
                child: SizedBox(
                  height: height??40,
                  child: SvgPicture.asset(image)),
              );
  }
}



