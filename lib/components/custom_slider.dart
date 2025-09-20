import 'package:flutter/material.dart';
import 'package:gradient_slider/gradient_slider.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: media(context).size.width * 0.77,
      child: FittedBox(
        fit: BoxFit.fill,
        child: GradientSlider(
          thumbSize: 5.5,
          overlaySize: 10.5,
          inactiveTrackColor: UiColors.sliderColor,
          activeTrackGradient: LinearGradient(colors: UiColors.orangeGradient),
          slider: Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              }),
        ),
      ),
    );
  }
}
