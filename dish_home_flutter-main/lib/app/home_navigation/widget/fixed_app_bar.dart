import 'package:dish_home/app/home_navigation/widget/svg_custom_icon.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/route/route_helper.dart';
import '../../../features/presentation/widget/small_text.dart';
import '../../../utils/app_dimension.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: Dimension.height70,
          width: Dimension.height230,
          padding: EdgeInsets.only(
              left: Dimension.width15, right: Dimension.width15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimension.radius50),
                bottomRight: Radius.circular(Dimension.radius50),
              ),
              color: AppColors.redColor,
              image: const DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage("assets/icons/shadow.png"),
              )),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getUserProfile());
                },
                child: CircleAvatar(
                  radius: Dimension.radius25,
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage(
                    "assets/icons/ppl.png",
                  ),
                ),
              ),
              SizedBox(width: Dimension.width10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  SmallTxt(
                    text: "Hi, Anjesh",
                    color: Colors.white,
                    size: Dimension.font14,
                  ),
                  SmallTxt(
                    text: "9819868628",
                    color: Colors.white,
                    size: Dimension.font14,
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            appBarIcon.length,
            (index) => GestureDetector(
              onTap: () {
                if (index == 0) {
                  Get.toNamed(RouteHelper.getNotificationPage());
                } else if (index == 1) {
                  Get.toNamed(RouteHelper.getScannerPage());
                } else {
                  Get.toNamed(RouteHelper.getMenuPage());
                }
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimension.width5,
                  
                ),
                child: myIcon(
                  appBarIcon[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
