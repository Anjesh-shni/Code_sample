import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter_svg/svg.dart';

myIcon(String iconPath) {
  return SvgPicture.asset(
    iconPath,
    height: Dimension.icon32,
    width: Dimension.icon32,
  );
}
