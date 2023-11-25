import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_row.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../utils/app_dimension.dart';
import '../../widget/small_text.dart';

class DataUsagePage extends StatefulWidget {
  const DataUsagePage({super.key});

  @override
  State<DataUsagePage> createState() => _DataUsagePageState();
}

class _DataUsagePageState extends State<DataUsagePage>
    with SingleTickerProviderStateMixin {
  List graphData = ["Data Usages", "Usages graph"];
  bool selectSwitch = false;
  int selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
      appBar: appBar("Data usages"),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimension.height5, vertical: Dimension.height10),
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
                  Tab(text: "Day"),
                  Tab(text: "Week"),
                  Tab(text: "Months"),
                  Tab(text: "Year"),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            2,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                  selectSwitch = !selectSwitch;
                                });
                              },
                              child: Container(
                                height: Dimension.height50,
                                width: Dimension.height180,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimension.height10),
                                  border: Border.all(
                                    color: selectedIndex == index
                                        ? AppColors.redColor
                                        : AppColors.grey,
                                  ),
                                ),
                                child: Center(
                                  child: SmallTxt(
                                    text: graphData[index],
                                    color: selectedIndex == index
                                        ? AppColors.redColor
                                        : AppColors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimension.height20,
                        ),
                        SfCartesianChart(
                          plotAreaBackgroundColor: Colors.red.shade50,
                          borderColor: AppColors.grey,
                          plotAreaBorderColor: AppColors.redColor,
                          tooltipBehavior: TooltipBehavior(),
                          backgroundColor: Colors.green.shade50,
                          enableSideBySideSeriesPlacement: true,
                          primaryXAxis: CategoryAxis(),
                          series: <LineSeries<SalesData, String>>[
                            LineSeries<SalesData, String>(
                              color: AppColors.redColor,
                              width: 2,
                              dataSource: <SalesData>[
                                SalesData('Sun', 5),
                                SalesData('Mon', 80),
                                SalesData('Tue', 34),
                                SalesData('Wed', 95),
                                SalesData('Thr', 60),
                                SalesData('Fri', 80),
                                SalesData('Sat', 85),
                              ],
                              xValueMapper: (SalesData sales, _) => sales.day,
                              yValueMapper: (SalesData sales, _) =>
                                  sales.dataUsages,
                            )
                          ],
                        ),
                        SizedBox(height: Dimension.height15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            2,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Container(
                                  height: Dimension.height55,
                                  width: Dimension.height170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.height10),
                                    border: Border.all(
                                      color: AppColors.grey,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: Dimension.height5),
                                        height: Dimension.height40,
                                        width: Dimension.height40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Dimension.radius5,
                                          ),
                                          color: AppColors.whiteShade,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            index == 0
                                                ? Icons.file_download_outlined
                                                : Icons.file_upload_outlined,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SmallTxt(
                                            text: index == 0
                                                ? "Current Download"
                                                : "Current Upload",
                                            size: 14,
                                            color: AppColors.grey,
                                          ),
                                          SmallTxt(
                                            text: "1.06 Mbps",
                                            size: Dimension.font20,
                                            color: AppColors.black,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: Dimension.height20),
                        const CustomRowWithIcons(
                          text1: "FUP Enforced level 0: ",
                          text2: "200 Mbps",
                          icons: Icons.help_outline,
                        ),
                        SizedBox(height: Dimension.height30),
                        SmallTxt(
                          text: "Total Data Usages",
                          size: Dimension.font20,
                        ),
                        SizedBox(height: Dimension.height10),
                        Container(
                          height: Dimension.height400,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (ctx, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                    vertical: Dimension.height5,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimension.height10,
                                  ),
                                  height: Dimension.height80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius10),
                                    color: AppColors.whiteShade,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.recycling,
                                        size: Dimension.icon24,
                                      ),
                                      SizedBox(width: Dimension.height20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SmallTxt(
                                            text: "Date",
                                            color: AppColors.grey,
                                          ),
                                          SmallTxt(
                                            text: "2023-01-24",
                                            size: Dimension.font20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: Dimension.height45 * 3),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SmallTxt(
                                            text: "Usages",
                                            color: AppColors.grey,
                                          ),
                                          SmallTxt(
                                            text: "2GB",
                                            size: Dimension.font20,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                  SmallTxt(text: "text"),
                  SmallTxt(text: "text"),
                  SmallTxt(text: "text"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.day, this.dataUsages);
  final String day;
  final double dataUsages;
}
