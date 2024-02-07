import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/buttons/cinemax_outlined_button.dart';
import 'package:ui_kit/component/buttons/cinemax_text_button.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/switch/cinemax_swith.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CinemaxFilledButton(
              label: 'Filled',
              icon: CinemaxIcons.layer,
              onPressed: () {},
            ),
            CinemaxTextButton(
              label: 'Text',
              onPressed: () {},
            ),
            CinemaxOutlinedButton(
              label: 'Outline',
              icon: CinemaxIcons.layer,
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CinemaxCheckBox(
                  onChanged: () {
                    setState(() {
                      value = !value;
                    });
                  },
                  value: value,
                ),
                const SizedBox(width: 30),
                CinemaxCheckBox(
                  boxShape: BoxShape.rectangle,
                  onChanged: () {
                    setState(() {
                      value = !value;
                    });
                  },
                  value: value,
                )
              ],
            ),
            SizedBox(height: 10),
            CinemaxSwith(
              value: value,
              onChanged: (l) {
                setState(() {
                  value = !value;
                });
              },
            )
          ],
        ),
      )),
    );
  }
}
