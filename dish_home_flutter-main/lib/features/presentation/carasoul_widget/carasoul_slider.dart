import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../../utils/string_icon_image.dart';

class CarasoulSliderPage extends StatefulWidget {
  const CarasoulSliderPage({super.key});

  @override
  State<CarasoulSliderPage> createState() => _CarasoulSliderPageState();
}

class _CarasoulSliderPageState extends State<CarasoulSliderPage> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: Dimension.height10,
          ),
            
          child: CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                 height: Dimension.height300,
              scrollDirection: Axis.horizontal,
              aspectRatio: 16 / 9,
              viewportFraction: 0.85,
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
                    margin:  EdgeInsets.symmetric(horizontal: Dimension.height5),
                    padding:  EdgeInsets.symmetric(horizontal:  Dimension.height5),
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
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sliderImage.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: Dimension.height12,
                height: Dimension.height12,
                margin:  EdgeInsets.symmetric(
                  vertical:  Dimension.height8,
                  horizontal: Dimension.height8-4,
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
      ],
    );
  }
}
