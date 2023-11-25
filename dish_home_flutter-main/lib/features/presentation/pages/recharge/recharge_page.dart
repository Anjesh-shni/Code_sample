import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/small_text.dart';
import 'recharge_confirm_page.dart';

class RechargePage extends StatefulWidget {
  const RechargePage({super.key});

  @override
  State<RechargePage> createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> {
  List rechargeMethod = ["Recharge using Pin", "Online Recharge"];
  bool isSelected = false;
  int selectedIndex = 0;
  int selectedRadioButton = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Recharge"),
      body: Column(
        children: [
          Container(
            height: Dimension.height500,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: Dimension.height10,
              vertical: Dimension.height10,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Dimension.height10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius10),
              color: AppColors.cardColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimension.height10),
                Align(
                  alignment: Alignment.center,
                  child: SmallTxt(
                    text: "DishHome Recharge",
                    size: Dimension.font26,
                    color: AppColors.darkNAVY,
                  ),
                ),
                SizedBox(height: Dimension.height20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    2,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: Dimension.height40 * 1.3,
                        width: Dimension.height180,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.height10),
                          border: Border.all(
                            color: selectedIndex == index
                                ? AppColors.marronColor
                                : AppColors.grey,
                          ),
                        ),
                        child: Center(
                          child: SmallTxt(
                            text: index == 0 ? "Self" : "Others",
                            color: selectedIndex == index
                                ? AppColors.marronColor
                                : AppColors.darkNAVY,
                            size: Dimension.font20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Dimension.height20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    rechargeMethod.length,
                    (index) => Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = !isSelected;
                              selectedRadioButton = index;
                            });
                          },
                          child: Container(
                            height: Dimension.height30,
                            width: Dimension.height30,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.height15),
                              border: Border.all(
                                color: AppColors.grey,
                              ),
                            ),
                            child: Container(
                                  height: Dimension.height25,
                              width: Dimension.height25,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimension.height15),
                                color: selectedRadioButton == index
                                    ? AppColors.green
                                    : Colors.transparent,
                                border: Border.all(
                                  color: selectedRadioButton == index
                                      ? AppColors.grey
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: Dimension.height10),
                        SmallTxt(
                          text: rechargeMethod[index],
                          color: AppColors.darkNAVY,
                          size: Dimension.font16,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Dimension.height30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallTxt(
                      text: "Customer ID",
                      size: Dimension.font20,
                      color: AppColors.smallTextColor,
                    ),
                    SizedBox(height: Dimension.height5),
                    MyTextField(hintText: "2275483"),
                    SizedBox(height: Dimension.height20),
                    SmallTxt(
                      text: "Voucher PIN",
                      size: Dimension.font20,
                      color: AppColors.smallTextColor,
                    ),
                    SizedBox(height: Dimension.height5),
                    MyTextField(hintText: "33197726411"),
                    SizedBox(height: Dimension.height20),
                    CustomButton(
                      color: AppColors.redColor,
                      text: "Go",
                      width: double.infinity,
                      onTap: () {
                        Get.to(const RechargeConfirmPage());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
