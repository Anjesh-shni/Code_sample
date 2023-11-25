import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double height;
  final double? width;
  final Color color;
  final String text;
  const CustomButton({
    super.key,
    required this.color,
    this.height = 54,
    this.width,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? Dimension.buttonWidth,
        height: Dimension.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.radius10),
          border: Border.all(
            color: AppColors.grey,
          ),
          color: color,
        ),
        child: Center(
          child: SmallTxt(
            text: text,
            size: Dimension.font16,
            color: AppColors.whiteGrey,
          ),
        ),
      ),
    );
  }
}
