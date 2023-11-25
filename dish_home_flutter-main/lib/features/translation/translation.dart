import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

import '../../app/home_navigation/widget/custom_app_bar.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  int selectedIndex = 0;
  List selectLanguage = ["English", "Nepali", "Hindi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Select Language"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Dimension.height10),
          Center(
            child: SmallTxt(
              text: "Select your preferred language",
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: Dimension.height10),
          Container(
            height: Dimension.height300,
            child: ListView.builder(
                itemCount: selectLanguage.length,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: Dimension.height20,
                        vertical: Dimension.height15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallTxt(text: selectLanguage[index]),
                          Container(
                            height: Dimension.height20,
                            width: Dimension.height20,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius50 * 2),
                              border: Border.all(color: AppColors.darkNAVY),
                              color: selectedIndex == index
                                  ? AppColors.redColor
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
