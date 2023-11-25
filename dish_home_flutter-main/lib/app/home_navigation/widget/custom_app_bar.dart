import 'package:flutter/material.dart';
import '../../../features/presentation/widget/small_text.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_dimension.dart';

appBar(String appText) {
  return AppBar(
    backgroundColor: Colors.black12,
    elevation: 0,
    title: SmallTxt(
      text: appText,
      size: Dimension.font16,
      color: AppColors.menuText,
    ),
  );
}
