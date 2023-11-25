import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../widget/small_text.dart';

class DishHomeDTH extends StatefulWidget {
  const DishHomeDTH({super.key});

  @override
  State<DishHomeDTH> createState() => _DishHomeDTHState();
}

class _DishHomeDTHState extends State<DishHomeDTH>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("DishHome DTH"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.height10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10, vertical: Dimension.height10),
              child: SmallTxt(
                text: "Chose your prefered TV/ Package from the option below.",
                size: Dimension.font18,
                color: AppColors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.height10),
              height: Dimension.height50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius25),
                color: AppColors.grey,
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius25),
                  color: AppColors.marronColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  SmallTxt(
                    text: "Watch Monthly",
                    color: Colors.white,
                  ),
                  SmallTxt(
                    text: "Watch yearly",
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height10),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimension.height5,
                          vertical: Dimension.height10,
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10),
                          border: Border.all(color: AppColors.grey),
                          color: AppColors.pinkShade,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height10,
                                vertical: Dimension.height10,
                              ),
                              height: Dimension.height300,
                              width: Dimension.height10 * 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(Dimension.radius10),
                                    bottomLeft:
                                        Radius.circular(Dimension.radius10)),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffFF959A),
                                    Color(0xffEABEFF),
                                    Color(0xffFFCFFD),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: SmallTxt(
                                  text: "Life\nStyle\nHD",
                                  size: Dimension.font26,
                                  color: AppColors.redColor,
                                ),
                              ),
                            ),
                            SizedBox(width: Dimension.width15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallTxt(
                                      text: "DishHome lifeStyle HD Package",
                                      size: Dimension.font20),
                                  SizedBox(height: Dimension.height30),
                                  SmallTxt(
                                      text: "✓ Internet Charge : Rs. 24305"),
                                  SizedBox(height: Dimension.height5),
                                  SmallTxt(text: "✓ Installation Charge: Free"),
                                  SizedBox(height: Dimension.height5),
                                  SmallTxt(
                                      text: "✓ Router Rental Charge: Free"),
                                  SizedBox(height: Dimension.height30),
                                  SmallTxt(
                                    text: "Rs. 12,450/ monthly",
                                    color: AppColors.green,
                                    size: Dimension.font20,
                                  ),
                                  SizedBox(height: Dimension.height10),
                                  CustomButton(
                                    color: AppColors.redColor,
                                    text: "Choose plan",
                                    width: Dimension.height10 * 24,
                                    height: Dimension.height35,
                                    onTap: () {
                                      Get.toNamed(RouteHelper.getLifeStyleHD());
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimension.height5,
                          vertical: Dimension.height10,
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10),
                          border: Border.all(color: AppColors.grey),
                          color: AppColors.pinkShade,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height10,
                                vertical: Dimension.height10,
                              ),
                              height: Dimension.height300,
                              width: Dimension.height10 * 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(Dimension.radius10),
                                    bottomLeft:
                                        Radius.circular(Dimension.radius10)),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffDF0909),
                                    Color(0xff8B29B9),
                                    Color(0xff810384),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: SmallTxt(
                                  text: "Life\nStyle\nHD",
                                  size: Dimension.font26,
                                  color: AppColors.redColor,
                                ),
                              ),
                            ),
                            SizedBox(width: Dimension.width15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallTxt(
                                      text: "DishHome lifeStyle HD Package",
                                      size: Dimension.font20),
                                  SizedBox(height: Dimension.height30),
                                  SmallTxt(
                                      text: "✓ Internet Charge : Rs. 24305"),
                                  SizedBox(height: Dimension.height5),
                                  SmallTxt(text: "✓ Installation Charge: Free"),
                                  SizedBox(height: Dimension.height5),
                                  SmallTxt(
                                      text: "✓ Router Rental Charge: Free"),
                                  SizedBox(height: Dimension.height30),
                                  SmallTxt(
                                    text: "Rs. 12,450/ monthly",
                                    color: AppColors.green,
                                    size: Dimension.font20,
                                  ),
                                  SizedBox(height: Dimension.height10),
                                  CustomButton(
                                    color: AppColors.redColor,
                                    text: "Choose plan",
                                    width: Dimension.height10 * 24,
                                    height: Dimension.height35,
                                    onTap: () {
                                      Get.toNamed(RouteHelper.getLifeStyleHD());
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
