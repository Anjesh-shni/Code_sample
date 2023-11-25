import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../widget/small_text.dart';
import 'account_dignos_details.dart';

class AccountDignostic extends StatefulWidget {
  const AccountDignostic({super.key});

  @override
  State<AccountDignostic> createState() => _AccountDignosticState();
}

class _AccountDignosticState extends State<AccountDignostic> {
  bool go = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Account Diagnostic"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.height10,
          vertical: Dimension.height20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/img/wifi.svg"),
                  SizedBox(width: Dimension.height20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallTxt(
                        text: "You are diagnosis for username : ram1@23",
                        color: AppColors.grey,
                        size: Dimension.font16,
                      ),
                      SmallTxt(
                        text: "Wifi Connection : World_2_1",
                        color: AppColors.grey,
                        size: Dimension.font16,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: Dimension.height20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      go = !go;
                    });
                    Future.delayed(
                      const Duration(seconds: 5),
                      () => Get.to(
                        AccountDignosticDetails(),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: go ? AppColors.green : AppColors.darkNAVY,
                    ),
                    child: Center(
                      child: SmallTxt(
                        text: go ? "Start" : "Running",
                        size: Dimension.font32,
                        color: AppColors.whiteShade,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height10),
              SmallTxt(
                text: "Finding Optimal Server",
                color: AppColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
