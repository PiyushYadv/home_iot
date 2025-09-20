import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:home_ui/components/device_widget.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  double cardRadius = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.backgroundColor,
      body: Container(
        margin: const EdgeInsets.only(left: 20, top: 60, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Wifi:tw1r_413_7G',
                  style: Theme.of(context).textTheme.displayMedium,
                )
              ],
            ),
            const Gap(8),
            Text(
              '3 new devices',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Gap(32),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                const DeviceWidget(
                  imageAsset: 'bork',
                  primaryText: 'Bork V350',
                  secondaryText: 'Vaccum Cleaner',
                  padding: EdgeInsets.all(24),
                ),
                DeviceWidget(
                  imageWidget: Image.asset('assets/images/image-10.png'),
                  imageAsset: 'image-9',
                  primaryText: 'LIFX LED Light',
                  secondaryText: 'Smart bulb',
                  padding: const EdgeInsets.all(24),
                ),
                const DeviceWidget(
                  imageAsset: 'image-8',
                  primaryText: 'Xiaomi DEM-F600',
                  secondaryText: 'Humidifier',
                  padding: EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 12,
                  ),
                ),
                DottedBorder(
                  color: UiColors.dividerColor,
                  strokeWidth: 1,
                  radius: Radius.circular(cardRadius),
                  dashPattern: const [10, 5],
                  customPath: (size) {
                    return Path()
                      ..moveTo(cardRadius, 0)
                      ..lineTo(size.width - cardRadius, 0)
                      ..arcToPoint(Offset(size.width, cardRadius),
                          radius: Radius.circular(cardRadius))
                      ..lineTo(size.width, size.height - cardRadius)
                      ..arcToPoint(Offset(size.width - cardRadius, size.height),
                          radius: Radius.circular(cardRadius))
                      ..lineTo(cardRadius, size.height)
                      ..arcToPoint(Offset(0, size.height - cardRadius),
                          radius: Radius.circular(cardRadius))
                      ..lineTo(0, cardRadius)
                      ..arcToPoint(Offset(cardRadius, 0),
                          radius: Radius.circular(cardRadius));
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 24),
                    width: media(context).size.width * 0.42,
                    height: media(context).size.height * 0.185,
                    decoration: BoxDecoration(
                      color: UiColors.backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/wifi.svg'),
                        Text(
                          'Not found',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          'device?',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          'Select manually',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                color: UiColors.orangeColor,
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(210),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: media(context).size.width,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: UiColors.orangeColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Text(
                  'Add Device',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: UiColors.backgroundColor,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
