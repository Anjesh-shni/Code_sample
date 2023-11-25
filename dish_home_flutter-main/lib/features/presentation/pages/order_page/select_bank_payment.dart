import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../utils/app_dimension.dart';
import '../../widget/custom_button.dart';
import '../../widget/small_text.dart';
import '../dish_home_go/dish_home_go.dart';

class SelectPaymentBank extends StatefulWidget {
  const SelectPaymentBank({super.key});

  @override
  State<SelectPaymentBank> createState() => _SelectPaymentBankState();
}

class _SelectPaymentBankState extends State<SelectPaymentBank> {
  List payments = ["CIPS", "Esewa", "IME Pay", "Khalti"];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Life Style HD"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Dimension.height10),
              Container(
                height:  Dimension.height300,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: payments.length,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        height:  Dimension.height64,
                        width:  Dimension.height340,
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimension.height10),
                        margin:
                            EdgeInsets.symmetric(vertical: Dimension.height5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.whiteGrey,
                          border: Border.all(
                            color: _selectedIndex == index
                                ? AppColors.green
                                : AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  paymentMethodList[index],
                                  width:  Dimension.height40,
                                ),
                                SizedBox(
                                  width: Dimension.width10,
                                ),
                                SmallTxt(
                                  text: payments[index],
                                  size: Dimension.font16,
                                ),
                              ],
                            ),
                            Checkbox(
                              activeColor: AppColors.green,
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(Dimension.radius50*2),
                                ),
                              ),
                              value: _selectedIndex == index ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  _selectedIndex == index;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: Dimension.height10),
              CustomButton(
                  color: AppColors.redColor,
                  text: "Order Now",
                  width: double.infinity,
                  onTap: () {
                    Get.to(() => const DishHomeGo());
                  }),
              SizedBox(height: Dimension.height40),
              Container(
                height:  Dimension.height150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  color: AppColors.whiteShade,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallTxt(
                      text: "Total Amount",
                      size: Dimension.font20,
                      color: AppColors.black,
                    ),
                    SizedBox(height: Dimension.height10),
                    SmallTxt(
                      text: "Rs. 54",
                      size: Dimension.font32,
                      color: AppColors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
