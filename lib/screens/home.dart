import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_ui/screens/device_screen.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.backgroundColor,
      body: IndexedStack(
        index: index,
        children: const [
          HomeScreen(),
          DeviceScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: UiColors.backgroundColor,
        selectedItemColor: UiColors.orangeColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          setState(
            () {
              index = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              colorFilter: ColorFilter.mode(
                  index == 0 ? UiColors.orangeColor : UiColors.bodyTextColor,
                  BlendMode.srcIn),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              colorFilter: ColorFilter.mode(
                  index == 1 ? UiColors.orangeColor : UiColors.titleColor,
                  BlendMode.srcIn),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/grid.svg',
              colorFilter: ColorFilter.mode(
                  index == 2 ? UiColors.orangeColor : UiColors.titleColor,
                  BlendMode.srcIn),
            ),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              colorFilter: ColorFilter.mode(
                  index == 3 ? UiColors.orangeColor : UiColors.bodyTextColor,
                  BlendMode.srcIn),
            ),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
