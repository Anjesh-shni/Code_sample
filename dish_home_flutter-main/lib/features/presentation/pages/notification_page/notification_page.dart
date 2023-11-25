import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../utils/app_colors.dart';

class NotifiacationPage extends StatefulWidget {
  const NotifiacationPage({super.key});

  @override
  State<NotifiacationPage> createState() => _NotifiacationPageState();
}

class _NotifiacationPageState extends State<NotifiacationPage>
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
      appBar: appBar("Notifications"),
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
                  Tab(text: "My inbox"),
                  Tab(text: "App inbox"),
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
                          SmallTxt(
                            text: "Today",
                            size: Dimension.font16,
                            color: AppColors.grey,
                          ),
                          SizedBox(height: Dimension.height10),
                          Container(
                            height: Dimension.height10 * 26,
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: Dimension.height5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Dimension.height5,
                                      vertical: Dimension.height5),
                                  height: Dimension.height10 * 12,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardYellowShade,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius10),
                                    border: Border.all(color: AppColors.grey),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimension.height10,
                                            vertical: Dimension.height10),
                                        decoration: BoxDecoration(
                                          color: AppColors.redDeem,
                                          borderRadius: BorderRadius.circular(
                                              Dimension.radius50 * 2),
                                        ),
                                        child: const Icon(
                                          Icons.key,
                                          color: AppColors.pureWhite,
                                        ),
                                      ),
                                      SizedBox(width: Dimension.height10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SmallTxt(
                                              text:
                                                  "DishHome online servive password changed",
                                              size: Dimension.font16,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: notificationText,
                                              size: Dimension.font14,
                                              color: AppColors.grey,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: "2 days ago",
                                              size: 12,
                                              color: AppColors.grey,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: Dimension.height20),
                          SmallTxt(
                            text: "Yesterday",
                            size: Dimension.font16,
                            color: AppColors.grey,
                          ),
                          Container(
                            height: Dimension.height10 * 26,
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: Dimension.height5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Dimension.height5,
                                      vertical: Dimension.height5),
                                  height: Dimension.height10 * 12,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardYellowShade,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius10),
                                    border: Border.all(color: AppColors.grey),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimension.height10,
                                            vertical: Dimension.height10),
                                        decoration: BoxDecoration(
                                          color: AppColors.redDeem,
                                          borderRadius: BorderRadius.circular(
                                              Dimension.radius50 * 2),
                                        ),
                                        child: const Icon(
                                          Icons.key,
                                          color: AppColors.pureWhite,
                                        ),
                                      ),
                                      SizedBox(width: Dimension.height10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SmallTxt(
                                              text:
                                                  "DishHome online servive password changed",
                                              size: Dimension.font16,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: notificationText,
                                              size: Dimension.font14,
                                              color: AppColors.grey,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: "2 days ago",
                                              size: 12,
                                              color: AppColors.grey,
                                            ),
                                          ],
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
                          SmallTxt(
                            text: "Today",
                            size: Dimension.font16,
                            color: AppColors.grey,
                          ),
                          SizedBox(height: Dimension.height10),
                          Container(
                            height: Dimension.height10 * 26,
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: Dimension.height5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Dimension.height5,
                                      vertical: Dimension.height5),
                                  height: Dimension.height10 * 12,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardYellowShade,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius10),
                                    border: Border.all(color: AppColors.grey),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimension.height10,
                                            vertical: Dimension.height10),
                                        decoration: BoxDecoration(
                                          color: AppColors.redDeem,
                                          borderRadius: BorderRadius.circular(
                                              Dimension.radius50 * 2),
                                        ),
                                        child: const Icon(
                                          Icons.key,
                                          color: AppColors.pureWhite,
                                        ),
                                      ),
                                      SizedBox(width: Dimension.height10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SmallTxt(
                                              text:
                                                  "DishHome online servive password changed",
                                              size: Dimension.font16,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: notificationText,
                                              size: Dimension.font14,
                                              color: AppColors.grey,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: "2 days ago",
                                              size: 12,
                                              color: AppColors.grey,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: Dimension.height20),
                          SmallTxt(
                            text: "Yesterday",
                            size: Dimension.font16,
                            color: AppColors.grey,
                          ),
                          Container(
                            height: Dimension.height10 * 26,
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: Dimension.height5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Dimension.height5,
                                      vertical: Dimension.height5),
                                  height: Dimension.height10 * 12,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardYellowShade,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius10),
                                    border: Border.all(color: AppColors.grey),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimension.height10,
                                            vertical: Dimension.height10),
                                        decoration: BoxDecoration(
                                          color: AppColors.redDeem,
                                          borderRadius: BorderRadius.circular(
                                              Dimension.radius50 * 2),
                                        ),
                                        child: const Icon(
                                          Icons.key,
                                          color: AppColors.pureWhite,
                                        ),
                                      ),
                                      SizedBox(width: Dimension.height10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SmallTxt(
                                              text:
                                                  "DishHome online servive password changed",
                                              size: Dimension.font16,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: notificationText,
                                              size: Dimension.font14,
                                              color: AppColors.grey,
                                            ),
                                            SizedBox(
                                                height: Dimension.height10),
                                            SmallTxt(
                                              text: "2 days ago",
                                              size: 12,
                                              color: AppColors.grey,
                                            ),
                                          ],
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
