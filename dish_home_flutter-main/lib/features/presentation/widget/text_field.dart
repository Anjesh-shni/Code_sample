import 'package:flutter/material.dart';
import '../../../utils/app_dimension.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  final String hintText;
  final Widget? icon;

  MyTextField({
    Key? key,
    required this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimension.radius5),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: Dimension.font16),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius5),
            borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
          suffixIcon: icon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius5),
            borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius5),
            borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
