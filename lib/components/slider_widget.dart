import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:home_ui/components/custom_slider.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UiColors.containerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      width: media(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Main Light',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomSlider(),
              //const Gap(16),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  'assets/icons/lamp.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
          const Gap(21),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Floor lamp',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomSlider(),
              //const Gap(16),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  'assets/icons/tablelamp.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
