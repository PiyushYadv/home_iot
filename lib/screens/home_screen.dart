import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_ui/components/image_widget.dart';
import 'package:home_ui/components/slider_widget.dart';
import 'package:home_ui/components/weather_widget.dart';
import 'package:home_ui/themes/home_ui_theme.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(
          FontAwesomeIcons.angleLeft,
          color: UiColors.titleColor,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              'assets/icons/bell.svg',
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Bedroom',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            color: UiColors.backgroundColor,
          ),
          const ImageWidget(),
          Positioned(
            top: media(context).size.height * 0.46,
            left: media(context).size.width * 0.05,
            right: media(context).size.width * 0.05,
            child: const Column(
              children: [
                Row(
                  children: [
                    WeatherWidget(
                      text: '36%',
                      iconText: 'humidity',
                      secondText: 'Humidifier',
                      thirdText: 'Mode 2',
                    ),
                    Gap(12),
                    WeatherWidget(
                      text: '73%',
                      iconText: 'clean',
                      secondText: 'Purifier',
                      thirdText: 'On',
                    ),
                  ],
                ),
                Gap(12),
                SliderWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
