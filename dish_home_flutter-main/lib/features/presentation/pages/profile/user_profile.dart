import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/big_text.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Profiles"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Stack(
              children: [
                Container(
                  height: Dimension.height180,
                 width: Dimension.height180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius50),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/img/userP.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: Dimension.height10*13,
                  top:Dimension.height80,
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.getEditProfile());
                    },
                    icon: SvgPicture.asset(
                      "assets/svg/edit.svg",
                      width: Dimension.icon24,
                    ),
                  ),
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallTxt(
                  text: "Balance : ",
                  size: Dimension.font20,
                  color: Colors.grey,
                ),
                SmallTxt(
                  text: "Rs.32,721",
                  size: Dimension.font20,
                  color: Colors.green,
                ),
              ],
            ),
            Center(
              child: Container(
                margin:  EdgeInsets.all(
                  Dimension.height10,
                ),
                height: Dimension.height50,
                width: Dimension.height10*26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius30),
                  color: const Color(0xffF4BF2A),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/rewarrd.svg",
                      height: 24,
                    ),
                    SmallTxt(
                      text: "No reward collected",
                      size: Dimension.font20,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height15,
                vertical: Dimension.height10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallTxt(
                    text: "Basic Details",
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  BigText(text: "Customer ID"),
                  SizedBox(height: Dimension.height5),
                  MyTextField(hintText: "1234567"),
                  SizedBox(height: Dimension.height15),
                  BigText(text: "Full Name"),
                  SizedBox(height: Dimension.height5),
                  MyTextField(hintText: "Anjesh Sahani"),
                  SizedBox(height: Dimension.height15),
                  BigText(text: "Email"),
                  SizedBox(height: Dimension.height5),
                  MyTextField(hintText: "anjeshshni1@gmail.com"),
                  SizedBox(height: Dimension.height15),
                  BigText(text: "Contact"),
                  SizedBox(height: Dimension.height5),
                  MyTextField(hintText: "+977-9819868628"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
