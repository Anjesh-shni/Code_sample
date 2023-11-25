import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class CustomBlog extends StatelessWidget {
  final IconData icon;
  final String heading;
  final String content;
  const CustomBlog({
    super.key,
    required this.icon,
    required this.heading,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: AppColors.black,
          size: Dimension.icon24 * 1.5,
        ),
        SizedBox(height: Dimension.height10),
        Text(
          heading,
          style: TextStyle(
            fontSize: Dimension.font20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: Dimension.height10),
        SmallTxt(
          text: content,
          color: AppColors.grey,
        ),
      ],
    );
  }
}
