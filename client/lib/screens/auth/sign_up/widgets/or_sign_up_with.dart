import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/text_style.dart';

class OrSignUpWith extends StatelessWidget {
  const OrSignUpWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(height: 1, color: TextColor.grey)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Or Sign up with',
                style: TextStyles.h5(fontWeightStyle: FontWeightStyle.regular)
                    .copyWith(color: TextColor.grey),
              ),
            ),
            Expanded(child: Divider(height: 1, color: TextColor.grey)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 70,
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
              height: 150,
              width: 70,
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
    );
  }
}
