import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class OrSignUpWith extends StatelessWidget {
  const OrSignUpWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(child: Divider(height: 1, color: TextColor.grey)),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: constraints.maxHeight / 10,
                  horizontal: 10,
                ),
                child: Text(
                  'Or Sign up with',
                  style: textStyle.h5.copyWith(
                      color: TextColor.grey,
                      fontWeight: FontWeightStyle.regular.fontWeight),
                ),
              ),
              Expanded(child: Divider(height: 1, color: TextColor.grey)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: constraints.maxHeight / 3,
                width: constraints.maxWidth / 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: PrimaryColor.light,
                ),
                child: Icon(
                  Icons.apple,
                  size: 40,
                  color: PrimaryColor.soft,
                ),
              ),
              Container(
                height: constraints.maxHeight / 3,
                width: constraints.maxWidth / 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: PrimaryColor.light,
                ),
                child: Icon(
                  Icons.g_mobiledata,
                  size: 40,
                  color: PrimaryColor.soft,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
