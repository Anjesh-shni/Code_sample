import 'package:flutter/material.dart';
import '../../../utils/app_dimension.dart';

class HeaderText extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  HeaderText({
    Key? key,
    this.color = const Color(0xff332d2b),
    this.size = 16,
    required this.text,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: Dimension.font32,
      ),
    );
  }
}
