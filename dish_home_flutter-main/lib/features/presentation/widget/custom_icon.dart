import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget icon;
  final VoidCallback? onTap;
  const CustomIcon(
      {super.key,
      this.height = 45,
      this.width = 45,
      required this.icon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimension.radius10),
      ),
      child: Center(
        child: IconButton(
          onPressed: onTap,
          icon: icon,
        ),
      ),
    );
  }
}
