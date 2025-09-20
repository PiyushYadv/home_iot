import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({
    super.key,
    required this.text,
    required this.iconText,
    required this.secondText,
    required this.thirdText,
  });

  final String text;
  final String iconText;
  final String secondText;
  final String thirdText;

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: media(context).size.width * 0.435,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      //height: media(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: UiColors.containerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SvgPicture.asset(
                'assets/icons/${widget.iconText}.svg',
                height: 24,
                width: 24,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const Gap(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.secondText,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'Air',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          const Gap(32),
          Container(
            width: 129,
            decoration: BoxDecoration(
              border: Border.all(
                color: UiColors.dividerColor,
                width: 1,
              ),
            ),
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.thirdText,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Transform.scale(
                scaleY: 0.85,
                child: Switch(
                  activeTrackColor: UiColors.orangeColor,
                  inactiveTrackColor: UiColors.dividerColor,
                  thumbColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.disabled)) {
                        return UiColors.backgroundColor.withOpacity(.48);
                      }
                      return UiColors.backgroundColor;
                    },
                  ),
                  trackOutlineColor: WidgetStateProperty.resolveWith<Color>(
                    (states) => Colors.transparent,
                  ),
                  value: isActive,
                  onChanged: (value) {
                    setState(
                      () {
                        isActive = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
