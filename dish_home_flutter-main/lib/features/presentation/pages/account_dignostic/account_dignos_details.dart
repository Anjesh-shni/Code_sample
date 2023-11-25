import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../widget/list_tile_widget.dart';
import '../../widget/small_text.dart';

// ignore: must_be_immutable
class AccountDignosticDetails extends StatelessWidget {
  AccountDignosticDetails({super.key});
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
              SizedBox(height: Dimension.height40),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10,
                  vertical: Dimension.height10,
                ),
                height: Dimension.height10 * 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  color: AppColors.whiteShade,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListWidget(
                      title: "Account Status",
                      subtitle: "Account check completed",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                    ListWidget(
                      title: "Bandwidt Status",
                      subtitle: "bandwidth check completed",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                    ListWidget(
                      title: "Fiber Power level Status",
                      subtitle: "Fiber power level check completed",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                    ListWidget(
                      title: "FUP Status",
                      subtitle: "Checking FUP status completed",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                    ListWidget(
                      title: "Connection Status",
                      subtitle: "Connection status checking completed",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                    ListWidget(
                      title: "NetTV Status",
                      subtitle: "Checking NetTv status completed",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                    ListWidget(
                      title: "Wifi Signal Status",
                      subtitle: "Your Wifi signal is very good(-30 dbm)",
                      icons: Icon(
                        Icons.done,
                        color: AppColors.whiteShade,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
