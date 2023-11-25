import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/Dish_logo.png",
      height: Dimension.logoforUI,
      width: Dimension.logoforUI,
    );
  }
}
