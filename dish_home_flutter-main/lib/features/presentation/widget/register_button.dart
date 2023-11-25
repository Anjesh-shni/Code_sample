import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/route/route_helper.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(RouteHelper.getCreateAccount());
        },
        child: Container(
          margin: EdgeInsets.all(Dimension.height10),
          alignment: Alignment.centerRight,
          height: Dimension.height20,
          width: Dimension.height64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.radius5),
          ),
          child: Text(
            "Register",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.redColor,
              fontWeight: FontWeight.w700,
              fontSize: Dimension.font16,
            ),
          ),
        ),
      ),
    );
  }
}
