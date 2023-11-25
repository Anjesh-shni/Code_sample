import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/carasoul_widget/carasoul_slider.dart';
import 'package:dish_home/features/presentation/widget/custom_blog_center.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../../../utils/string_icon_image.dart';
import '../../carasoul_widget/carasoul_slider_full.dart';
import '../../widget/small_text.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("About Us"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Carasoul
            const CarasoulSliderPage(),
            //text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height20),
              child: SmallTxt(
                text: dishHomeText + dishHomeText,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: Dimension.height20),
            const CarasoulSliderPageFull(),
            SizedBox(height: Dimension.height20),
            SmallTxt(
              text: "Our Mission & Vision",
              size: Dimension.font26,
              color: AppColors.smallTextColor,
            ),
            SizedBox(height: Dimension.height20),
            const CustomBlogCenter(
              icon: Icons.phone_android_rounded,
              heading: "Mission",
              content: dishHomeText,
            ),
            SizedBox(height: Dimension.height20),
            const CustomBlogCenter(
              icon: Icons.phone_android_rounded,
              heading: "Vision",
              content: dishHomeText,
            ),
            SizedBox(height: Dimension.height20),
            const CarasoulSliderPageFull(),
            SizedBox(height: Dimension.height20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallTxt(
                    text: "Customer Satisfaction",
                    size: Dimension.font26,
                    color: AppColors.smallTextColor,
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallTxt(
                    text: dishHomeText,
                    color: AppColors.grey,
                  ),
                  SizedBox(height: Dimension.height30),
                  SmallTxt(
                    text: "Respect",
                    size: Dimension.font26,
                    color: AppColors.smallTextColor,
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallTxt(
                    text: dishHomeText,
                    color: AppColors.grey,
                  ),
                  SizedBox(height: Dimension.height30),
                  SmallTxt(
                    text: "Accountability",
                    size: Dimension.font26,
                    color: AppColors.smallTextColor,
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallTxt(
                    text: dishHomeText,
                    color: AppColors.grey,
                  ),
                  SizedBox(height: Dimension.height30),
                  SmallTxt(
                    text: "Teamwork",
                    size: Dimension.font26,
                    color: AppColors.smallTextColor,
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallTxt(
                    text: dishHomeText,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height30),
            Center(
              child: SmallTxt(
                text:
                    "    We do whatever it takes to provide best \n                      Quality Service",
                size: Dimension.font20,
                color: AppColors.darkNAVY,
              ),
            ),
            SizedBox(height: Dimension.height20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height30),
              child: Text(
                dishHomeText,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: Dimension.font16,
                ),
              ),
            ),
            SizedBox(height: Dimension.height20),
          ],
        ),
      ),
    );
  }
}
