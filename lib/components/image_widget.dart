import 'package:flutter/material.dart';
import 'package:home_ui/themes/home_ui_theme.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: UiColors.upperBlackGradient,
          begin: const Alignment(0, 0.5),
          end: const Alignment(0, 0),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: UiColors.lowerBlackGradient,
            begin: const Alignment(0, -0.5),
            end: const Alignment(0, 1),
          ),
        ),
        child: Image.asset(
          'assets/images/image-7.png',
          height: media(context).size.height * 0.6,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
