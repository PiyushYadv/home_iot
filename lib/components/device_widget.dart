import 'package:flutter/material.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

class DeviceWidget extends StatefulWidget {
  const DeviceWidget({
    super.key,
    required this.imageAsset,
    this.imageWidget = const SizedBox(),
    required this.primaryText,
    required this.secondaryText,
    required this.padding,
  });

  final String imageAsset;
  final Widget imageWidget;
  final String primaryText;
  final String secondaryText;
  final EdgeInsets padding;

  @override
  State<DeviceWidget> createState() => _DeviceWidgetState();
}

class _DeviceWidgetState extends State<DeviceWidget> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            onHover = !onHover;
          },
        );
        Future.delayed(
          const Duration(milliseconds: 800),
          () {
            setState(
              () {
                onHover = !onHover;
              },
            );
          },
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: widget.padding,
        width: media(context).size.width * 0.435,
        decoration: BoxDecoration(
          color: UiColors.containerColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          border: Border.all(
            color: onHover ? UiColors.orangeColor : UiColors.backgroundColor,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/${widget.imageAsset}.png'),
                if (onHover) widget.imageWidget,
              ],
            ),
            Text(
              widget.primaryText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              widget.secondaryText,
              style: Theme.of(context).textTheme.displayMedium,
            )
          ],
        ),
      ),
    );
  }
}
