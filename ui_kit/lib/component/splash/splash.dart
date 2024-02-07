import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/theme/text_style.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.logoStyle;
    final mediaSize = MediaQuery.of(context).size;
    final double logoVerticalPadding;
    if (mediaSize.width < 600 && !kIsWeb) {
      logoVerticalPadding = 20;
    } else {
      logoVerticalPadding = 36;
    }
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: logoVerticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 74,
                  maxHeight: 80,
                ),
                child: SvgPicture.asset(
                  ImageAssets.cinemaxLogo,
                  color: style.primaryColor,
                  package: 'ui_kit',
                ),
              ),
              Text(
                'CINEMAX',
                style: TextStyles.h1(fontWeightStyle: FontWeightStyle.semibold)
                    .copyWith(
                  color: style.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
