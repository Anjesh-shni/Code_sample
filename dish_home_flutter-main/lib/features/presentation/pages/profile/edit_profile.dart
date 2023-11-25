import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/big_text.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../utils/app_dimension.dart';
import '../../widget/small_text.dart';
import '../../widget/text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Edit Profile"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
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
                child: Center(
                    child: SmallTxt(
                  text: "Change profile",
                  color: Colors.grey[50],
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallTxt(
                  text: "Balance : ",
                  size: Dimension.font16,
                  color: Colors.grey,
                ),
                SmallTxt(
                  text: "Rs.32,721",
                  size: Dimension.font18,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: Dimension.height15),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    color: AppColors.redColor,
                    text: "Save change",
                    width: Dimension.height180,
                  ),
                  CustomButton(
                    color: const Color.fromARGB(255, 68, 67, 67),
                    text: "Cancel",
                    width: Dimension.height180,
                  ),
                ],
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
