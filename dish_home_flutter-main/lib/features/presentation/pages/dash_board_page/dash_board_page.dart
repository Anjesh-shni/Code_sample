import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/app/home_navigation/widget/svg_custom_icon.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List package = ["TV", "Internet", "PPV", "DishHome"];
  PageController pageController = PageController(viewportFraction: 0.92);
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Wallet
            Container(
              height: Dimension.height64,
              padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(Dimension.radius5),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius50 * 2),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        height: Dimension.icon22 * 2,
                        width: Dimension.icon22 * 2,
                        child: SvgPicture.asset("assets/icons/wallet1.svg"),
                      ),
                      SizedBox(width: Dimension.width10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Dimension.height10,
                          ),
                          SmallTxt(
                            text: "NRP 74,232",
                            size: Dimension.font18,
                            color: Colors.green,
                          ),
                          SmallTxt(
                            text: "Current balance",
                            size: Dimension.font14,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius50),
                            border: Border.all(
                              color: Colors.red,
                              width: 2,
                            )),
                        height: Dimension.heigght45,
                        width: Dimension.heigght45,
                        child: SvgPicture.asset("assets/icons/badge1.svg"),
                      ),
                      SizedBox(width: Dimension.width10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Dimension.height10,
                          ),
                          SmallTxt(
                            text: "No points",
                            size: Dimension.font18,
                            color: Colors.green,
                          ),
                          SmallTxt(
                            text: "Reward points",
                            size: Dimension.font14,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Carasoul
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimension.height10,
              ),
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  height: Dimension.carasoul250,
                  scrollDirection: Axis.horizontal,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.75,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: sliderImage.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(horizontal: Dimension.height5),
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimension.height5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius5),
                            color: AppColors.black),
                        child: Image.asset(
                          "$i",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            //Dot indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sliderImage.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: Dimension.height12,
                    height: Dimension.height12,
                    margin: EdgeInsets.symmetric(
                      vertical: Dimension.height8,
                      horizontal: 4.0,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? AppColors.redColor
                          : AppColors.grey,
                    ),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: Dimension.height10),
            //Nuclear package
            Container(
              height: Dimension.height170,
              margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
              padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius10),
                border: Border.all(color: AppColors.grey),
                color: AppColors.pureWhite,
              ),
              child: Center(
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircularPercentIndicator(
                        startAngle: 120.0,
                        radius: Dimension.height64,
                        lineWidth: Dimension.height15,
                        percent: 0.65,
                        animationDuration: 20,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallTxt(
                              text: "365 Day(s)",
                              size: Dimension.font16,
                              color: AppColors.darkNAVY,
                            ),
                            SmallTxt(
                              text: "remaining",
                              size: Dimension.font14,
                              color: AppColors.navyDark.withOpacity(0.4),
                            ),
                          ],
                        ),
                        circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: AppColors.grey,
                        progressColor: AppColors.redColor,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SmallTxt(
                                text: "Nuclear Family Package",
                                size: Dimension.font18,
                              ),
                              SizedBox(width: Dimension.height10),
                              Image.asset(
                                "assets/icons/Dish_logo.png",
                                height: Dimension.height30,
                                width: Dimension.height30,
                              ),
                            ],
                          ),
                          SmallTxt(
                            text: "(100 Mbps)",
                            size: Dimension.font20,
                          ),
                          SizedBox(height: Dimension.height10),
                          SmallTxt(
                            text: "1 month package",
                            size: Dimension.font16,
                            color: AppColors.grey,
                          ),
                          SizedBox(height: Dimension.height20),
                          Row(
                            children: [
                              CustomButton(
                                color: AppColors.green,
                                text: "Renew",
                                width: Dimension.height110,
                                height: Dimension.height50,
                              ),
                              SizedBox(width: Dimension.width5),
                              CustomButton(
                                color: AppColors.grey,
                                text: "Take credit",
                                width: Dimension.height110,
                                height: Dimension.height50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimension.height10),
            //nuclear package
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height5,
                  vertical: Dimension.height5 - 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: Dimension.height50,
                              width: Dimension.height50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimension.radius50 * 2),
                                color: AppColors.whiteShade,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/menu/dwifi.svg",
                                ),
                              ),
                            ),
                            SizedBox(width: Dimension.width10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallTxt(
                                  text: "Router Setting",
                                  size: Dimension.font16,
                                  color: AppColors.darkNAVY,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wifi,
                                      color: AppColors.green,
                                      size: Dimension.icon24,
                                    ),
                                    SizedBox(width: Dimension.width5),
                                    SmallTxt(
                                      text: "Online",
                                      size: Dimension.font16,
                                      color: AppColors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: Dimension.height50,
                              width: Dimension.height50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimension.radius50 * 2),
                                color: AppColors.whiteShade,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/menu/dgraph.svg",
                                ),
                              ),
                            ),
                            SizedBox(width: Dimension.width10),
                            SmallTxt(
                              text: "Usages Graph",
                              size: Dimension.font16,
                              color: AppColors.darkNAVY,
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            SizedBox(height: Dimension.height10),
            //Package
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimension.height10, bottom: Dimension.height5),
                  child: SmallTxt(
                    text: "Package",
                    size: Dimension.font20,
                    color: AppColors.smallTextColor,
                  ),
                ),
                SizedBox(height: Dimension.height10),
                Container(
                  height: Dimension.height110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeIcon.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Get.toNamed(RouteHelper.getTvPage());
                          } else if (index == 1) {
                            Get.toNamed(RouteHelper.getDataUsages());
                          } else if (index == 2) {
                            Get.toNamed(RouteHelper.getPpvPage());
                          } else {
                            Get.toNamed(RouteHelper.getDishHomeGo());
                          }
                        },
                        child: Container(
                          height: Dimension.height60,
                          width: Dimension.height95,
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimension.height10),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius10),
                            color: AppColors.pureWhite,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: Dimension.height50,
                                  width: Dimension.height50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius50 * 2),
                                    color: AppColors.whiteShade,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      homeIcon[index],
                                      width: Dimension.height35,
                                      height: Dimension.height35,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: Dimension.height10),
                              SmallTxt(
                                text: package[index],
                                color: AppColors.grey,
                                size: Dimension.font14,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimension.height10),
            Padding(
              padding: EdgeInsets.all(Dimension.height8),
              child: SmallTxt(
                text: "Features",
                size: Dimension.font20,
                color: AppColors.smallTextColor,
              ),
            ),
            //feature section
            Container(
              height: Dimension.height300,
              margin: EdgeInsets.symmetric(horizontal: Dimension.height10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: Dimension.height10,
                  mainAxisSpacing: Dimension.height10,
                ),
                itemCount: featureIcons.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                      } else if (index == 1) {
                        Get.toNamed(RouteHelper.getRechargePage());
                      } else if (index == 2) {
                        Get.toNamed(RouteHelper.getRefer());
                      } else if (index == 3) {
                        Get.toNamed(RouteHelper.getSupportPage());
                      } else if (index == 4) {
                        Get.toNamed(RouteHelper.getStore());
                      } else {}
                    },
                    child: Container(
                      height: Dimension.height70,
                      width: Dimension.height70,
                      decoration: BoxDecoration(
                        color: AppColors.pureWhite,
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(Dimension.height10),
                            height: Dimension.height50,
                            width: Dimension.height50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius50 * 2),
                              color: AppColors.whiteShade,
                            ),
                            child: myIcon("${featureIcons[index]}"),
                          ),
                          SizedBox(height: Dimension.height20),
                          Center(
                            child: SmallTxt(
                              text: featureText[index],
                              size: Dimension.font14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Dimension.height20),
            //Store
            Padding(
              padding: EdgeInsets.only(
                  left: Dimension.height10, bottom: Dimension.height10),
              child: SmallTxt(text: "Store", size: Dimension.font20),
            ),
            Container(
                height: Dimension.height200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (ctx, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: Dimension.height10,
                        ),
                        height: Dimension.height70,
                        width: Dimension.height180,
                        decoration: BoxDecoration(
                          color: AppColors.pureWhite,
                          borderRadius: BorderRadius.circular(
                            Dimension.radius10,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(child: Image.asset(routerList[index])),
                            SmallTxt(
                              text: index == 0
                                  ? "Wifi Extender"
                                  : "Fresh Spinach",
                              size: Dimension.font18,
                              color: AppColors.darkNAVY,
                            ),
                            SmallTxt(
                              text: "Rs. 30/each",
                              size: Dimension.font18,
                              color: AppColors.green,
                            ),
                            SizedBox(height: Dimension.height10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SmallTxt(
                                  text: "View Details",
                                  size: Dimension.font18,
                                  color: AppColors.redColor,
                                ),
                                SizedBox(width: Dimension.width5),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.redColor,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    })),
            SizedBox(height: Dimension.height20),
          ],
        ),
      ),
    );
  }
}
