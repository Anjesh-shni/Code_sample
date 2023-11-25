// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onPress;
  final String buttonText;
  final bool transparent;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final double? fontSize;
  final double radius;
  final Widget? icon;

  const ButtonWidget({
    Key? key,
    this.onPress,
    required this.buttonText,
    this.transparent = false,
    this.margin,
    this.height,
    this.width,
    this.fontSize,
    this.radius = 5,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _flatButton = TextButton.styleFrom(
      backgroundColor: onPress == null
          ? AppColors.whiteShade
          : transparent
              ? Colors.transparent
              : AppColors.pinkShade,
      minimumSize: Size(width == null ? Dimension.screenwidth : width!,
          height != null ? height! :  Dimension.height60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
    return Center(
      child: SizedBox(
        width: width != null ? width : Dimension.screenwidth,
        height: height ??  Dimension.height60,
        child: TextButton(
          style: _flatButton,
          onPressed: onPress,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            icon != null
                ? Padding(
                    padding: EdgeInsets.only(right: Dimension.width10),
                    child: icon,
                  )
                : const SizedBox(),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: fontSize != null ? fontSize : Dimension.font16,
                color: AppColors.textColors,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
