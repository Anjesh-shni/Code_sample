import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/order_page/order_page.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/custom_button.dart';
import '../../widget/small_text.dart';

const List<String> channelList = <String>["Nepali", "Madrasi", "Animal planet"];

class LifeStyleHD extends StatefulWidget {
  const LifeStyleHD({super.key});

  @override
  State<LifeStyleHD> createState() => _LifeStyleHDState();
}

class _LifeStyleHDState extends State<LifeStyleHD> {
  String dropdownValue = channelList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Life Style HD"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.height15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimension.height5),
              Container(
                height: Dimension.height350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius10),
                    color: AppColors.whiteShade,
                    border: Border.all(color: AppColors.grey)),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallTxt(text: "Life Style HD", size: Dimension.font18),
                      SizedBox(height: Dimension.height5),
                      SmallTxt(
                          text: "DishHome life style HD Package",
                          color: AppColors.grey),
                      SizedBox(height: Dimension.height20),
                      SmallTxt(
                        text: "Rs. 12,450/ monthly",
                        color: AppColors.green,
                        size: Dimension.font20,
                      ),
                      SizedBox(height: Dimension.height30),
                      SmallTxt(text: "✓ Internet Charge : Rs. 24,305"),
                      SizedBox(height: Dimension.height5),
                      SmallTxt(text: "✓ No. of Tv : upto 3"),
                      SizedBox(height: Dimension.height5),
                      SmallTxt(text: "✓ Installation Charge: Free"),
                      SizedBox(height: Dimension.height5),
                      SmallTxt(text: "✓ TV Installation Charge: 1500"),
                      SizedBox(height: Dimension.height5),
                      SmallTxt(text: "✓ Router Rental Charge: Free"),
                      SizedBox(height: Dimension.height20),
                      CustomButton(
                        color: AppColors.redColor,
                        text: "Order Now",
                        width: 326,
                        height: 35,
                        onTap: () {
                          Get.to(() => OrderPage());
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimension.height30),
              SmallTxt(
                  text: "The DishHome TV Channels", size: Dimension.font18),
              SizedBox(height: Dimension.height20),
              DropdownMenu<String>(
                width: Dimension.height350,
                initialSelection: channelList.first,
                onSelected: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries:
                    channelList.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
              SizedBox(height: Dimension.height20),
              Container(
                height: Dimension.height380,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: channelListImg.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        height: Dimension.height80,
                        width: Dimension.height10 * 9,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.cardYellowShade,
                          borderRadius:
                              BorderRadius.circular(Dimension.radius15),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Center(
                          child: Image.asset(channelListImg[index]),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
