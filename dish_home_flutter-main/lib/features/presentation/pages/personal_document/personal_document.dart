import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

import '../../../../app/home_navigation/widget/custom_app_bar.dart';

class PesonalDocumentsManagement extends StatelessWidget {
  const PesonalDocumentsManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Personal Documents"),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Dimension.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallTxt(
                text: "Upload Identification Documents",
                size: Dimension.font20,
                color: AppColors.smallTextColor,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: Dimension.height30,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimension.height15),
          Container(
              height: Dimension.height500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin:
                           EdgeInsets.only(left:  Dimension.height5, right:  Dimension.height5, bottom: Dimension.height10),
                      height:Dimension.height100,
                      decoration: BoxDecoration(
                          color: AppColors.whiteGrey,
                          borderRadius: BorderRadius.circular(Dimension.radius5),
                          border: Border.all(color: AppColors.cardColor)),
                      child: Row(
                        children: [
                          Container(
                            height:  Dimension.height100,
                            width:  Dimension.height10*12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimension.radius10),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/img/ctzn.jpg",
                                  ),
                                ),
                                color: Colors.green.shade200),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:  Dimension.height10, top:  Dimension.height15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallTxt(
                                  text: "Citizenship",
                                  size: Dimension.font20,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                 CustomButton(
                                  color: AppColors.redColor,
                                  text: "Download",
                                  height:  Dimension.height10,
                                  width:  Dimension.height10*15,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          SmallTxt(
                            text: "Remove",
                            color: AppColors.marronColor,
                            size: Dimension.font20,
                          ),
                          SizedBox(width: Dimension.height10),
                        ],
                      ),
                    ),
                  );
                },
              )),
        ],
      )),
    );
  }
}
