import 'package:dish_home/features/presentation/widget/custom_buttton_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_vlog.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/route/route_helper.dart';
import '../../../../utils/string_icon_image.dart';

class DishHomeGo extends StatelessWidget {
  const DishHomeGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
              height: Dimension.height340,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffDF0909),
                    Color(0xff8B29B9),
                    Color(0xff810384),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: Dimension.height30,
                  left: Dimension.height15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallTxt(
                      text: "DishHome Go \nPackage",
                      size: Dimension.font32,
                      color: AppColors.whiteGrey,
                    ),
                    SizedBox(height: Dimension.height30),
                    const CustomButtonWithIcon(
                      color: AppColors.navyDark,
                      text: "Change Password",
                      icon: Icons.key,
                    ),
                    SizedBox(height: Dimension.height10),
                    const CustomButtonWithIcon(
                      color: AppColors.navyDark,
                      text: "Renew DidhHome Go",
                      icon: Icons.recycling_rounded,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimension.height20),
            Padding(
              padding: EdgeInsets.only(left: Dimension.height20),
              child: Center(
                child: SmallTxt(
                  text: "Exclusive Channels on DishHome.",
                  size: Dimension.font26,
                ),
              ),
            ),
            SizedBox(height: Dimension.height20),
            Container(
              padding: EdgeInsets.only(left: Dimension.height10),
              height: Dimension.height10 * 9,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: channelListImg.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: Dimension.height5),
                      height: Dimension.height70,
                      width: Dimension.height80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.grey)),
                      child: Center(
                        child: Image.asset(
                          channelListImg[index],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height45, vertical: Dimension.height45),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "DishHome\n",
                      style: TextStyle(
                        color: AppColors.redColor,
                        fontSize: Dimension.font32,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(RouteHelper.getLogin()),
                          text: "In Any Device, Anytime",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: Dimension.font32,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallTxt(
                    text: dishHomeText,
                    color: AppColors.grey,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.mobile_screen_share_sharp,
                    heading: "Portable",
                    content: dishHomeText,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.devices_rounded,
                    heading: "Support Multiple Devices",
                    content: dishHomeText,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.computer,
                    heading: "Unique content",
                    content: dishHomeText,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.hd_outlined,
                    heading: "HD Quality",
                    content: dishHomeText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
