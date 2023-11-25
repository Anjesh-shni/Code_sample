import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PpvPage extends StatefulWidget {
  const PpvPage({super.key});

  @override
  State<PpvPage> createState() => _PpvPageState();
}

class _PpvPageState extends State<PpvPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List iconName = ["DishHome DTH", "DH Play", "iTV", "DVB-T2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar("TV/Package"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Dimension.radius10
                  ),
                  color: AppColors.whiteShade,
                ),
                height: Dimension.height300,
                padding: EdgeInsets.symmetric(
                    horizontal: Dimension.height10,
                    vertical: Dimension.height20),
                margin: EdgeInsets.symmetric(
                    horizontal: Dimension.height10,
                    vertical: Dimension.height10),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: tvIconList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getDishHomeDTH());
                              },
                              child: Container(
                                height: Dimension.height110,
                                width: Dimension.height10*12,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteGrey,
                                  borderRadius: BorderRadius.circular(
                                    Dimension.radius15
                                  ),
                                  border: Border.all(
                                    color: AppColors.black,
                                  ),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    tvIconList[index],
                                    width: Dimension.height45,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Dimension.height10),
                          SmallTxt(text: iconName[index])
                        ],
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10,
                  vertical: Dimension.height10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.height10),
                  color: Colors.grey,
                ),
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height:Dimension.carasoul250,
                    scrollDirection: Axis.horizontal,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
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
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sliderImage.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
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
              SmallTxt(
                text: "Upcoming latest Movies",
                size: Dimension.font16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
