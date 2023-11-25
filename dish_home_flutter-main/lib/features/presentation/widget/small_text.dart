import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';

// ignore: must_be_immutable
class SmallTxt extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallTxt({
    Key? key,
    this.color = const Color(0xff475467),
    this.size = 16,
    required this.text,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: size ?? Dimension.font14,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
