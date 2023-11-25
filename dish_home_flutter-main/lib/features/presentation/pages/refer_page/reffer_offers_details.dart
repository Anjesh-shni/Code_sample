import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';

class ReferOffers extends StatefulWidget {
  const ReferOffers({super.key});

  @override
  State<ReferOffers> createState() => _ReferOffersState();
}

class _ReferOffersState extends State<ReferOffers>
    with SingleTickerProviderStateMixin {
  bool selectSwitch = false;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
      appBar: appBar("Refer offer"),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimension.height5, vertical: Dimension.height10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.height10),
              height: Dimension.height50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius50),
                color: AppColors.grey,
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius50),
                  color: AppColors.marronColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  SmallTxt(
                    text: "Router Setting",
                    color: Colors.white,
                  ),
                  SmallTxt(
                    text: "Connected Devices",
                    color: Colors.white,
                  ),
                  SmallTxt(
                    text: "Blocked Devices",
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  //Tab 1
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimension.height15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height10,
                              ),
                              height: Dimension.height100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimension.height10),
                                border: Border.all(color: AppColors.grey),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/wifi.svg",
                                    width: Dimension.height30,
                                    height: Dimension.height30,
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallTxt(
                                        text: "Router Status",
                                        size: Dimension.font16,
                                        color: AppColors.grey,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: Dimension.height15,
                                            width: Dimension.height15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimension.radius50 * 2),
                                              color: AppColors.green,
                                            ),
                                          ),
                                          SizedBox(
                                            width: Dimension.height5,
                                          ),
                                          SmallTxt(
                                            text: "Online",
                                            size: Dimension.font18,
                                            color: AppColors.navyDark,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: AppColors.grey,
                                    endIndent: 15,
                                    indent: 15,
                                    thickness: 0.6,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/wifi.svg",
                                    width: Dimension.height30,
                                    height: Dimension.height30,
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallTxt(
                                        text: "Optical Power",
                                        size: Dimension.font16,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(
                                        width: Dimension.height5,
                                      ),
                                      SmallTxt(
                                        text: "Fine(-20.80dBm)",
                                        size: Dimension.font18,
                                        color: AppColors.navyDark,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Channel in Use"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(hintText: "52"),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Wifi name"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "Anjesh_51_DTH",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height15,
                                    right: Dimension.height20),
                                child: SmallTxt(
                                  text: "Change",
                                  color: const Color.fromARGB(255, 39, 73, 117),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Hidden SSD"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "No",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height5,
                                    right: Dimension.height5),
                                child: InkWell(
                                  onTap: () {
                                    selectSwitch = !selectSwitch;
                                  },
                                  child: Switch(
                                    activeColor: AppColors.white20,
                                    activeTrackColor: AppColors.redColor,
                                    inactiveThumbColor: AppColors.redColor,
                                    value: selectSwitch ? true : false,
                                    onChanged: (value) {
                                      setState(() {
                                        selectSwitch = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Wifi Password"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "**********",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height15,
                                    right: Dimension.height20),
                                child: SmallTxt(
                                  text: "Change",
                                  color: const Color.fromARGB(255, 39, 73, 117),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height40),
                            CustomButton(
                              color: AppColors.redColor,
                              text: "Submit",
                              onTap: () {},
                              width: double.infinity,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  //Tab 2
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimension.height15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height10,
                              ),
                              height: Dimension.height100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimension.height10),
                                border: Border.all(color: AppColors.grey),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/wifi.svg",
                                    width: Dimension.height30,
                                    height: Dimension.height30,
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallTxt(
                                        text: "Router Status",
                                        size: Dimension.font16,
                                        color: AppColors.grey,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: Dimension.height15,
                                            width: Dimension.height15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimension.radius50 * 2),
                                              color: AppColors.green,
                                            ),
                                          ),
                                          SizedBox(
                                            width: Dimension.height5,
                                          ),
                                          SmallTxt(
                                            text: "Online",
                                            size: Dimension.font18,
                                            color: AppColors.navyDark,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: AppColors.grey,
                                    endIndent: 15,
                                    indent: 15,
                                    thickness: 0.6,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/wifi.svg",
                                    width: Dimension.height30,
                                    height: Dimension.height30,
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallTxt(
                                        text: "Optical Power",
                                        size: Dimension.font16,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(
                                        width: Dimension.height5,
                                      ),
                                      SmallTxt(
                                        text: "Fine(-20.80dBm)",
                                        size: Dimension.font18,
                                        color: AppColors.navyDark,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Channel in Use"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(hintText: "52"),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Wifi name"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "Anjesh_51_DTH",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height15,
                                    right: Dimension.height20),
                                child: SmallTxt(
                                  text: "Change",
                                  color: const Color.fromARGB(255, 39, 73, 117),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Hidden SSD"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "No",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height5,
                                    right: Dimension.height5),
                                child: InkWell(
                                  onTap: () {
                                    selectSwitch = !selectSwitch;
                                  },
                                  child: Switch(
                                    activeColor: AppColors.white20,
                                    activeTrackColor: AppColors.redColor,
                                    inactiveThumbColor: AppColors.redColor,
                                    value: selectSwitch ? true : false,
                                    onChanged: (value) {
                                      setState(() {
                                        selectSwitch = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Wifi Password"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "**********",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height15,
                                    right: Dimension.height20),
                                child: SmallTxt(
                                  text: "Change",
                                  color: const Color.fromARGB(255, 39, 73, 117),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height40),
                            CustomButton(
                              color: AppColors.redColor,
                              text: "Submit",
                              onTap: () {},
                              width: double.infinity,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  //Tab 3
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimension.height15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height10,
                              ),
                              height: Dimension.height100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimension.height10),
                                border: Border.all(color: AppColors.grey),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/wifi.svg",
                                    width: Dimension.height30,
                                    height: Dimension.height30,
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallTxt(
                                        text: "Router Status",
                                        size: Dimension.font16,
                                        color: AppColors.grey,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: Dimension.height15,
                                            width: Dimension.height15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Dimension.radius50 * 2,
                                              ),
                                              color: AppColors.green,
                                            ),
                                          ),
                                          SizedBox(
                                            width: Dimension.height5,
                                          ),
                                          SmallTxt(
                                            text: "Online",
                                            size: Dimension.font18,
                                            color: AppColors.navyDark,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: AppColors.grey,
                                    endIndent: 15,
                                    indent: 15,
                                    thickness: 0.6,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/wifi.svg",
                                    width: Dimension.height30,
                                    height: Dimension.height30,
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallTxt(
                                        text: "Optical Power",
                                        size: Dimension.font16,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(
                                        width: Dimension.height5,
                                      ),
                                      SmallTxt(
                                        text: "Fine(-20.80dBm)",
                                        size: Dimension.font18,
                                        color: AppColors.navyDark,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Channel in Use"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(hintText: "52"),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Wifi name"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "Anjesh_51_DTH",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height15,
                                    right: Dimension.height20),
                                child: SmallTxt(
                                  text: "Change",
                                  color: const Color.fromARGB(255, 39, 73, 117),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Hidden SSD"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "No",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height5,
                                    right: Dimension.height5),
                                child: InkWell(
                                  onTap: () {
                                    selectSwitch = !selectSwitch;
                                  },
                                  child: Switch(
                                    activeColor: AppColors.white20,
                                    activeTrackColor: AppColors.redColor,
                                    inactiveThumbColor: AppColors.redColor,
                                    value: selectSwitch ? true : false,
                                    onChanged: (value) {
                                      setState(() {
                                        selectSwitch = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(text: "Wifi Password"),
                            SizedBox(height: Dimension.height10),
                            MyTextField(
                              hintText: "**********",
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    top: Dimension.height15,
                                    right: Dimension.height20),
                                child: SmallTxt(
                                  text: "Change",
                                  color: const Color.fromARGB(255, 39, 73, 117),
                                ),
                              ),
                            ),
                            SizedBox(height: Dimension.height40),
                            CustomButton(
                              color: AppColors.redColor,
                              text: "Submit",
                              onTap: () {},
                              width: double.infinity,
                            ),
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
