import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';

class DishHomeStorePage extends StatefulWidget {
  const DishHomeStorePage({super.key});

  @override
  State<DishHomeStorePage> createState() => _DishHomeStorePageState();
}

class _DishHomeStorePageState extends State<DishHomeStorePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                height: Dimension.carasoul250,
                scrollDirection: Axis.horizontal,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
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
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius5),
                      ),
                      child: Image.asset(
                        "$i",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            //
            SizedBox(height: Dimension.height20),
            SmallTxt(
              text: "Shop by Categories",
              size: Dimension.font18,
            ),
            SizedBox(height: Dimension.height5),
            SmallTxt(
              text: "Get the best deals, NOW!",
              color: AppColors.grey,
              size: Dimension.font14,
            ),
            SizedBox(height: Dimension.height5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: Dimension.height35,
                      width: Dimension.height35,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius50 * 2),
                          color: AppColors.whiteShade),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: Dimension.icon24,
                        ),
                      ),
                    ),
                    SizedBox(width: Dimension.width5),
                    Container(
                      height: Dimension.height200,
                      width: Dimension.height10 * 30,
                      padding: EdgeInsets.only(
                          top: Dimension.height40, left: Dimension.height30),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: routerList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: Dimension.height5,
                                  ),
                                  height: Dimension.height150,
                                  width:
                                      Dimension.height150 + Dimension.height5,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimension.radius15),
                                      color: AppColors.whiteShade,
                                      border: Border.all(
                                          color: AppColors.whiteShade)),
                                  child: Center(
                                    child: Image.asset(
                                      routerList[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SmallTxt(
                                  text: routerName[index],
                                  size: Dimension.font16,
                                ),
                                Text(
                                  routerContent[index],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: Dimension.font14,
                                    color: AppColors.smallTextColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: Dimension.width5),
                    Container(
                      height: Dimension.height35,
                      width: Dimension.height35,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius50 * 2),
                          color: AppColors.whiteShade),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: Dimension.icon24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimension.height15),
            const Divider(
              color: AppColors.grey,
              thickness: 0.6,
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(height: Dimension.height20),
            SmallTxt(text: "New Arrivals", size: Dimension.font18),
            SizedBox(height: Dimension.height5),
            SmallTxt(
              text: "Get the best deals, NOW!",
              color: AppColors.grey,
              size: Dimension.font14,
            ),
            SizedBox(height: Dimension.height10),
            Container(
              height: Dimension.height400,
              margin: EdgeInsets.symmetric(
                vertical: Dimension.height20,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height10,
                vertical: Dimension.height10,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Dimension.height10,
                  mainAxisSpacing: Dimension.height10,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimension.height10,
                        vertical: Dimension.height10),
                    height: Dimension.height12 * 9,
                    width: Dimension.height12 * 9,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius10),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 1),
                        ),
                        BoxShadow(
                          color: AppColors.white20,
                          offset: Offset(-5, 0),
                        ),
                        BoxShadow(
                          color: AppColors.whiteGrey,
                          offset: Offset(5, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          channelListImg[index],
                        ),
                        SizedBox(height: Dimension.height10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallTxt(
                              text: "Router",
                              size: Dimension.font16,
                              color: AppColors.smallTextColor,
                            ),
                            SmallTxt(
                              text: "Wifi Extender",
                              size: Dimension.font14,
                            ),
                            SmallTxt(
                              text: "Rs. 4500",
                              size: Dimension.font14,
                              color: AppColors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            ///
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                height: Dimension.carasoul250,
                scrollDirection: Axis.horizontal,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
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
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius5),
                      ),
                      child: Image.asset(
                        "$i",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: Dimension.height10),
            SmallTxt(
              text: "Hot Deals",
              size: Dimension.font18,
            ),
            SizedBox(height: Dimension.height5),
            SmallTxt(
              text: "Deals you find nowhwere else",
              color: AppColors.grey,
              size: Dimension.font14,
            ),
            SizedBox(height: Dimension.height10),
            //

            Container(
              height: Dimension.height400,
              margin: EdgeInsets.symmetric(
                vertical: Dimension.height20,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height10,
                vertical: Dimension.height10,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Dimension.height10,
                  mainAxisSpacing: Dimension.height10,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimension.height10,
                        vertical: Dimension.height10),
                    height: Dimension.height12 * 9,
                    width: Dimension.height12 * 9,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius10),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 1),
                        ),
                        BoxShadow(
                          color: AppColors.white20,
                          offset: Offset(-5, 0),
                        ),
                        BoxShadow(
                          color: AppColors.whiteGrey,
                          offset: Offset(5, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          channelListImg[index],
                        ),
                        SizedBox(height: Dimension.height10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallTxt(
                              text: "Router",
                              size: Dimension.font16,
                              color: AppColors.smallTextColor,
                            ),
                            SmallTxt(
                              text: "Wifi Extender",
                              size: Dimension.font14,
                            ),
                            SmallTxt(
                              text: "Rs. 4500",
                              size: Dimension.font14,
                              color: AppColors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Dimension.height10),
            SmallTxt(text: "Our Brands", size: Dimension.font18),
            SizedBox(height: Dimension.height5),
            SmallTxt(
              text: "Best product from best brands",
              color: AppColors.grey,
              size: Dimension.font14,
            ),
            SizedBox(height: Dimension.height10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: Dimension.height35,
                    width: Dimension.height35,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimension.radius50 * 2),
                        color: AppColors.whiteShade),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: Dimension.icon24,
                      ),
                    ),
                  ),
                  SizedBox(width: Dimension.width5),
                  Container(
                    height: Dimension.height200,
                    width: Dimension.height10 * 30,
                    padding: EdgeInsets.only(
                      top: Dimension.height40,
                      left: Dimension.height30,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: routerList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: Dimension.height5,
                              ),
                              height: Dimension.height150,
                              width: Dimension.height150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.whiteShade,
                                  border:
                                      Border.all(color: AppColors.whiteShade)),
                              child: Center(
                                child: Image.asset(
                                  routerList[index],
                                  fit: BoxFit.cover,
                                  // width: 110,
                                  // height: 100,
                                ),
                              ),
                            ),
                            SmallTxt(
                              text: routerName[index],
                              size: Dimension.font26,
                            ),
                            Text(
                              routerContent[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: Dimension.font16,
                                color: AppColors.smallTextColor,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(width: Dimension.width5),
                  Container(
                    height: Dimension.height35,
                    width: Dimension.height35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.whiteShade),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: Dimension.icon24,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: Dimension.height30),
            const Divider(
              color: AppColors.grey,
              thickness: 0.6,
              indent: 25,
              endIndent: 25,
            ),
            SmallTxt(text: "Feature Products", size: Dimension.font18),
            SizedBox(height: Dimension.height5),
            SmallTxt(
                text: "Take a look what's new, RIGHT NOW",
                size: Dimension.font14,
                color: AppColors.grey),
            SizedBox(height: Dimension.height10),
            Container(
              height: Dimension.height500,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (ctx, index) {
                    return Container(
                      height: Dimension.height200,
                      margin: EdgeInsets.symmetric(
                          horizontal: Dimension.height10,
                          vertical: Dimension.height10),
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimension.height30,
                          vertical: Dimension.height10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius10),
                        color: AppColors.darkNAVY,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SmallTxt(
                                text: "Router",
                                color: AppColors.grey,
                              ),
                              SizedBox(height: Dimension.height10),
                              SmallTxt(
                                  text: "Wifi Extender",
                                  color: AppColors.cardColor,
                                  size: Dimension.font26),
                              SmallTxt(
                                text: "Rs. 7,900",
                                size: Dimension.font32,
                                color: AppColors.green,
                              ),
                            ],
                          ),
                          Image.asset(
                            routerList[0],
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
