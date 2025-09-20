import 'package:flutter/material.dart';
import 'package:home_ui/utils/custom_slider.dart';
import 'package:home_ui/utils/hex_color.dart';

MediaQueryData media(BuildContext context) {
  return MediaQuery.of(context);
}

class UiColors {
  static final titleColor = HexColor('#F8F8F8');
  static final subTitleColor = HexColor('#FFFFFF').withOpacity(0.6);
  static final bodyTextColor = HexColor('#F8F8F8').withOpacity(0.6);
  static final orangeColor = HexColor('#FFB267');
  static final lightOrangeColor = HexColor('#FFCEA0B2');
  static final List<Color> orangeGradient = [
    HexColor('#FFA64D'),
    HexColor('#FFC34F'),
  ];
  static final List<Color> upperBlackGradient = [
    HexColor('#190A06'),
    HexColor('#190A06').withOpacity(0),
  ];
  static final List<Color> lowerBlackGradient = [
    HexColor('#211D1D'),
    HexColor('#211D1D').withOpacity(0),
  ];
  static final sliderColor = HexColor('#393637');
  static final thumbColor = HexColor('#6B6869');
  static final dividerColor = HexColor('#393535');
  static final backgroundColor = HexColor('#211D1D');
  static final containerColor = HexColor('#282424');
}

class HomeUiTheme {
  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: UiColors.orangeColor,
        inactiveTrackColor: UiColors.sliderColor,
        thumbColor: UiColors.titleColor,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7.5),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 15.5),
        overlayColor: UiColors.thumbColor.withOpacity(0.2),
        rangeTrackShape: GradientRectRangeSliderTrackShape(
          gradient: LinearGradient(colors: UiColors.orangeGradient),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // unselectedItemColor: UiColors.kDarkWhiteColor,
        // selectedItemColor: UiColors.kOrangeColor,
        selectedIconTheme: IconThemeData(
          color: UiColors.orangeColor,
          size: 24,
        ),
        unselectedIconTheme: IconThemeData(
          color: UiColors.bodyTextColor,
          size: 24,
        ),
      ),
      fontFamily: 'Manrope',
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: UiColors.titleColor,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: UiColors.titleColor,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          color: UiColors.subTitleColor,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          color: UiColors.subTitleColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: UiColors.bodyTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.12,
        ),
      ),
    );
  }
}
