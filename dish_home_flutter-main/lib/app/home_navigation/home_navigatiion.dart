import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/chat_bot_page/chat_bot.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../features/presentation/pages/support_page/support_page.dart';
import 'widget/fixed_app_bar.dart';
import 'widget/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:dish_home/utils/app_colors.dart';
import '../../features/presentation/pages/store_page/dishhome_store.dart';
import '../../features/presentation/pages/dash_board_page/dash_board_page.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigation();
}

class _HomeNavigation extends State<HomeNavigation> {
  int selectedIndex = 0;
  List pages = [
    const HomePage(),
    const SupportPage(),
    const ChatBotPage(),
    const DishHomeStorePage(),
    const TvPage(),
  ];

  void onTapNavigation(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, Adaptive.h(7.5)),
          child: const MyAppBar(),
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: AppColors.pureWhite,
          shadowColor: AppColors.pureWhite,
          notchMargin: 10,
          elevation: 4,
          height: Dimension.height70,
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: AppColors.redColor,
            unselectedItemColor: AppColors.black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: Dimension.font14,
            unselectedFontSize: Dimension.font14,
            currentIndex: selectedIndex,
            onTap: onTapNavigation,
            items: [
              itemBar("assets/menu/homm.svg", "Home"),
              itemBar("assets/menu/support.svg", "Support"),
              const BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                label: "",
              ),
              itemBar("assets/menu/stor.svg", "Store"),
              itemBar("assets/menu/tvvv.svg", "Tv"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.pureWhite,
          elevation: 4,
          onPressed: () {
            Get.toNamed(RouteHelper.getChatBot());
          },
          child: Image.asset(
            "assets/icons/chatBot.png",
            height: Dimension.height35,
            width: Dimension.height35,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
