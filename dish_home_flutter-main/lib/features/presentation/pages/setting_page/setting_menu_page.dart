import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/setting_page/setting_widget.dart';
import 'package:dish_home/features/presentation/widget/custom_buttton_icon.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../widget/small_text.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Menu"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.height10,
            vertical: Dimension.height5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallTxt(
                text: "General ",
                color: AppColors.grey,
                size: Dimension.font18,
              ),
              Column(
                children: List.generate(
                  settingMenuIcons.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index == 0) {
                      } else if (index == 1) {
                        Get.toNamed(RouteHelper.getAboutUs());
                      } else if (index == 2) {
                        Get.toNamed(RouteHelper.getOrderPage());
                      } else if (index == 3) {
                        Get.toNamed(RouteHelper.getSpeedTest());
                      } else if (index == 4) {
                        Get.toNamed(RouteHelper.getAccountDignostic());
                      } else if (index == 5) {
                        Get.toNamed(RouteHelper.getRefer());
                      }
                    },
                    child: AccountWidget(
                        appIcon: SvgPicture.asset(
                          settingMenuIcons[index],
                          width: Dimension.icon24,
                        ),
                        bigText: SmallTxt(
                          text: settingMenuTetx[index],
                          size: Dimension.font16,
                        )),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Security ",
                color: AppColors.grey,
                size: Dimension.font18,
              ),
              Column(
                children: List.generate(
                  securitySettingIcons.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index == 0) {
                      } else {
                        Get.toNamed(RouteHelper.getChangePassword());
                      }
                    },
                    child: AccountWidget(
                        appIcon: SvgPicture.asset(
                          securitySettingIcons[index],
                          width: Dimension.icon24,
                        ),
                        bigText: SmallTxt(
                          text: securitySettingTetx[index],
                          size: Dimension.font16,
                        )),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "TV/PPV ",
                color: AppColors.grey,
                size: Dimension.font18,
              ),
              Column(
                children: List.generate(
                  tvppvIcons.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index == 0) {
                      } else if (index == 1) {
                        Get.toNamed(RouteHelper.getPpvPage());
                      } else {
                        Get.toNamed(RouteHelper.getTvPage());
                      }
                    },
                    child: AccountWidget(
                      appIcon: SvgPicture.asset(
                        tvppvIcons[index],
                        width: Dimension.icon24,
                      ),
                      bigText: SmallTxt(
                        text: tvppvText[index],
                        size: Dimension.font16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Tools ",
                color: AppColors.grey,
                size: Dimension.font18,
              ),
              Column(
                children: List.generate(
                  toolSettingIcons.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index == 0) {
                          Get.toNamed(RouteHelper.getOfferPromoo());
                      } else if (index == 1) {
                        Get.toNamed(RouteHelper.getInternateDataUsage());
                      } else if (index == 2) {
                        Get.toNamed(RouteHelper.getFaqs());
                      } else if (index == 3) {
                        Get.toNamed(RouteHelper.getLanguage());
                      } else if (index == 4) {
                        Get.toNamed(RouteHelper.getSupportPage());
                      } else {}
                    },
                    child: AccountWidget(
                      appIcon: SvgPicture.asset(
                        toolSettingIcons[index],
                        width: Dimension.icon24,
                      ),
                      bigText: SmallTxt(
                        text: toolsSettingText[index],
                        size: Dimension.font16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height20),
              CustomButtonWithIcon(
                color: AppColors.redColor,
                text: "Logout",
                icon: Icons.logout,
                width: double.infinity,
                onTap: () {
                  Get.offAll(RouteHelper.getLogin());
                },
              ),
              SizedBox(height: Dimension.height10),
            ],
          ),
        ),
      ),
    );
  }
}
