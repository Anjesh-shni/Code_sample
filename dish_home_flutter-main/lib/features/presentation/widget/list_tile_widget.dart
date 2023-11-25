import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_dimension.dart';
import 'small_text.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icons;
  const ListWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SmallTxt(
        text: title,
        size: Dimension.font20 - 2,
      ),
      subtitle: SmallTxt(
        text: subtitle,
        size: Dimension.font14,
        color: AppColors.grey,
      ),
      trailing: Container(
        height: Dimension.height25,
        width: Dimension.height25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
          color: AppColors.green,
        ),
        child: Center(
          child: icons,
        ),
      ),
    );
  }
}
