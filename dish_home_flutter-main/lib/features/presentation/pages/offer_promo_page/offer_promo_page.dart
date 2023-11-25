import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';

class OfferPromoPagr extends StatefulWidget {
  const OfferPromoPagr({super.key});

  @override
  State<OfferPromoPagr> createState() => _OfferPromoPagrState();
}

class _OfferPromoPagrState extends State<OfferPromoPagr>
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
      appBar: appBar("Offer & Promos"),
      body: Padding(
        padding: EdgeInsets.only(
            left: Dimension.height10,
            right: Dimension.height10,
            top: Dimension.height10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
              height: Dimension.height50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius25),
                color: AppColors.grey,
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius25),
                    border: Border.all(
                      color: AppColors.redColor,
                    )),
                labelColor: Colors.red,
                unselectedLabelColor: Colors.white,
                tabs: const [
                  Tab(text: "Promotion"),
                  Tab(text: "Offers"),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  //1st tab
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimension.height5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/menu/offer.svg"),
                              SizedBox(width: Dimension.height10),
                              SmallTxt(
                                text: "Available Promos",
                                size: Dimension.font14,
                                color: AppColors.smallTextColor,
                              ),
                            ],
                          ),
                          SizedBox(height: Dimension.height10),
                          Container(
                            height: Dimension.height500,
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                    // horizontal: Dimension.height5,
                                    vertical: Dimension.height5,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimension.height10,
                                    vertical: Dimension.height5,
                                  ),
                                  height: Dimension.carasoul250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Dimension.radius10,
                                    ),
                                    color: const Color(0xffF2F4F7),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SmallTxt(
                                            text: "MYFIRSTORDER",
                                            color: AppColors.smallTextColor,
                                            size: Dimension.font20,
                                          ),
                                          Container(
                                            height: Dimension.height35,
                                            width: Dimension.height80,
                                            decoration: BoxDecoration(
                                              color: AppColors.smallTextColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Dimension.radius50 * 2,
                                              ),
                                            ),
                                            child: Center(
                                              child: SmallTxt(
                                                text: "Product",
                                                size: Dimension.font14,
                                                color: AppColors.pureWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Dimension.height30),
                                      SmallTxt(
                                        text: promoText,
                                        color: AppColors.textColors,
                                        size: Dimension.font14,
                                      ),
                                      SizedBox(height: Dimension.height20),
                                      SmallTxt(
                                        text: "Valid till August 30, 2023",
                                        color: AppColors.grey,
                                        size: Dimension.font16,
                                      ),
                                      SizedBox(height: Dimension.height30),
                                      Container(
                                        width: double.infinity,
                                        height: Dimension.heigght45,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.smallTextColor),
                                          borderRadius: BorderRadius.circular(
                                              Dimension.radius10),
                                        ),
                                        child: Center(
                                          child: SmallTxt(text: "Add Promo"),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //2nd tab
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimension.height5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/menu/offer.svg"),
                              SizedBox(width: Dimension.height10),
                              SmallTxt(
                                text: "Available Promos",
                                size: Dimension.font14,
                                color: AppColors.smallTextColor,
                              ),
                            ],
                          ),
                          SizedBox(height: Dimension.height10),
                          Container(
                            height: Dimension.height500,
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                    // horizontal: Dimension.height5,
                                    vertical: Dimension.height5,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimension.height10,
                                    vertical: Dimension.height5,
                                  ),
                                  height: Dimension.carasoul250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Dimension.radius10,
                                    ),
                                    color: const Color(0xffF2F4F7),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SmallTxt(
                                            text: "MYFIRSTORDER",
                                            color: AppColors.smallTextColor,
                                            size: Dimension.font20,
                                          ),
                                          Container(
                                            height: Dimension.height35,
                                            width: Dimension.height80,
                                            decoration: BoxDecoration(
                                              color: AppColors.smallTextColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Dimension.radius50 * 2,
                                              ),
                                            ),
                                            child: Center(
                                              child: SmallTxt(
                                                text: "Product",
                                                size: Dimension.font14,
                                                color: AppColors.pureWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Dimension.height30),
                                      SmallTxt(
                                        text: promoText,
                                        color: AppColors.textColors,
                                        size: Dimension.font14,
                                      ),
                                      SizedBox(height: Dimension.height20),
                                      SmallTxt(
                                        text: "Valid till August 30, 2023",
                                        color: AppColors.grey,
                                        size: Dimension.font16,
                                      ),
                                      SizedBox(height: Dimension.height30),
                                      Container(
                                        width: double.infinity,
                                        height: Dimension.heigght45,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.smallTextColor),
                                          borderRadius: BorderRadius.circular(
                                              Dimension.radius10),
                                        ),
                                        child: Center(
                                          child: SmallTxt(text: "Add Promo"),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
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
