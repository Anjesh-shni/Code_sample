import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/features/presentation/widget/big_text.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height5,
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
            SizedBox(
              height: Dimension.height15,
            ),
            SmallTxt(
              text: "Now Showing",
              size: Dimension.font20,
              color: AppColors.black,
            ),
            SizedBox(
              height: Dimension.height10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height5,
                vertical: Dimension.height10,
              ),
              height: Dimension.height450,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (ctx, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:  EdgeInsets.only(left: Dimension.height10, right: Dimension.height10
                          ),
                          margin:  EdgeInsets.only(right: Dimension.height10,
                          ),
                          width: Dimension.height200,
                          height: Dimension.height280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimension.height10,),
                            color: Colors.black12,
                            image: const DecorationImage(
                              image: AssetImage("assets/img/slider.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: Dimension.height10),
                        BigText(
                          text: "Pulp Fuction",
                          size: Dimension.font16,
                        ),
                        SmallTxt(
                          text: "Show Channel : Zee cinema",
                          color: Colors.green,
                          size: Dimension.font14,
                        ),
                        SizedBox(height: Dimension.height5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius10),
                            color: Colors.green,
                          ),
                          height: Dimension.height55,
                          width: Dimension.height110,
                          child: Center(
                            child: SmallTxt(
                              text: "4:10 PM",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SmallTxt(
              text: "Upcoming latest Movies",
              size: Dimension.font18,
            ),
          ],
        ),
      ),
    );
  }
}
