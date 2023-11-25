import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../../utils/string_icon_image.dart';

class CarasoulSliderPageFull extends StatefulWidget {
  const CarasoulSliderPageFull({super.key});

  @override
  State<CarasoulSliderPageFull> createState() => _CarasoulSliderPageFullState();
}

class _CarasoulSliderPageFullState extends State<CarasoulSliderPageFull> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
         height: Dimension.height400,
        scrollDirection: Axis.horizontal,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
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
              decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(Dimension.radius5),
                  color: AppColors.black),
              child: Image.asset(
                "$i",
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
