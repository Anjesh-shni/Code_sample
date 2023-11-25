import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class TvPackage extends StatelessWidget {
  const TvPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Tv/Package"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimension.height20),
            SmallTxt(
              text: "Channels",
              size: Dimension.font32,
            ),
            SizedBox(height: Dimension.height30),
            SmallTxt(text: "  News"),
            SizedBox(height: Dimension.height10),
            Container(
              height:  Dimension.height10*9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: channelListImg.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
                    height:  Dimension.height70,
                    width:  Dimension.height80,
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
                },
              ),
            ),
            SizedBox(height: Dimension.height30),
            SmallTxt(text: "  Entertainment"),
            SizedBox(height: Dimension.height10),
            Container(
              height:  Dimension.height10*9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: channelListImg.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
                    height:  Dimension.height70,
                    width:  Dimension.height80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        border: Border.all(color: AppColors.grey)),
                    child: Center(
                      child: Image.asset(
                        channelListImg[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Dimension.height30),
            SmallTxt(text: "  Relegious"),
            SizedBox(height: Dimension.height10),
            Container(
              height:  Dimension.height10*9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: channelListImg.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
                    height:  Dimension.height70,
                    width:  Dimension.height80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        border: Border.all(color: AppColors.grey)),
                    child: Center(
                      child: Image.asset(
                        channelListImg[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Dimension.height30),
            SmallTxt(text: "  Music"),
            SizedBox(height: Dimension.height10),
            Container(
              height:  Dimension.height10*9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: channelListImg.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
                    height:  Dimension.height70,
                    width:  Dimension.height80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        border: Border.all(color: AppColors.grey)),
                    child: Center(
                      child: Image.asset(
                        channelListImg[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
