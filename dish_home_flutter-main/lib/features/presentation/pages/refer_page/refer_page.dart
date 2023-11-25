import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../widget/small_text.dart';
import 'reffer_offers_details.dart';

class ReferPage extends StatelessWidget {
  const ReferPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final addressController = TextEditingController();
    final phoneNumberController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: appBar("Refer"),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.height15,
            vertical: Dimension.height20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallTxt(
                text: "Friend's Name",
                color: AppColors.grey,
              ),
              SizedBox(height: Dimension.height10),
              TextField(
                obscureText: false,
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Anjesh sahani",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Friend's Address",
                color: AppColors.grey,
              ),
              SizedBox(height: Dimension.height10),
              TextField(
                obscureText: false,
                controller: addressController,
                decoration: InputDecoration(
                  hintText: "Budha colony, Anamnagar",
                  suffixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.backGroundColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Friend's Number",
                color: AppColors.grey,
              ),
              SizedBox(height: Dimension.height10),
              TextField(
                obscureText: false,
                controller: phoneNumberController,
                decoration: InputDecoration(
                  hintText: "9819868628",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: Dimension.height30,
              ),
              Center(
                child: CustomButton(
                  color: AppColors.redColor,
                  text: "Submit",
                  onTap: () {
                    Get.to(() => ReferOffers());
                  },
                  height: Dimension.height60,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: Dimension.height15,
              ),
              Center(
                child: SmallTxt(
                  text: "Benefits of Refer",
                  color: AppColors.darkNAVY,
                  size: Dimension.font20,
                ),
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              SmallTxt(
                text: benefits,
                color: AppColors.grey,
                size: Dimension.font14,
              ),
              SizedBox(
                height: Dimension.height15,
              ),
              SmallTxt(
                text: benefits,
                color: AppColors.grey,
                size: Dimension.font14,
              ),
              SizedBox(
                height: Dimension.height15,
              ),
              SmallTxt(
                text: benefits,
                color: AppColors.grey,
                size: Dimension.font14,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
