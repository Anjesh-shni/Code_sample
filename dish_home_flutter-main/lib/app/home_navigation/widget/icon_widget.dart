import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_colors.dart';

itemBar(String path, String text) {
  return BottomNavigationBarItem(
    backgroundColor: AppColors.redColor,
    icon: SvgPicture.asset(
      path,
      width: Dimension.icon22,
      height: Dimension.icon22,
    ),
    label: text,
  );
}
