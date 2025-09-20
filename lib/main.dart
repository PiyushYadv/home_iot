import 'package:flutter/material.dart';
import 'package:home_ui/screens/home.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: HomeUiTheme.theme(),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

/* class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UiColors.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              colorFilter:
                  ColorFilter.mode(UiColors.bodyTextColor, BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              colorFilter:
                  ColorFilter.mode(UiColors.titleColor, BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/grid.svg',
              colorFilter:
                  ColorFilter.mode(UiColors.titleColor, BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              colorFilter:
                  ColorFilter.mode(UiColors.bodyTextColor, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
} */
