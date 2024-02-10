import 'package:client/config/router/app_router_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/buttons/cinemax_text_button.dart';
import 'package:ui_kit/component/buttons/cinemax_outlined_button.dart';
import 'package:ui_kit/component/switch/cinemax_swith.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/component/input_field/input_field.dart';

class ComponentPage extends StatelessWidget {
  const ComponentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CinemaxAppBar(
        titleText: 'Component Page',
        action: CinemaxIcon(icon: CinemaxIcons.search),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const InputField(
                labelText: 'Full Name',
                prefixIcon: CinemaxIcons.eyeOff,
                suffixIcon: CinemaxIcons.search,
              ),
              CinemaxFilledButton(
                label: 'Tab Bar',
                onPressed: () => context.goNamed(AppRouterName.homeName),
              ),
              CinemaxTextButton(
                label: 'Text Button',
                onPressed: () {},
              ),
              CinemaxOutlinedButton(
                label: 'Outline Button',
                onPressed: () {},
              ),
              const Row(
                children: [
                  CinemaxCheckBox(value: false, onChanged: null),
                  SizedBox(width: 30),
                  CinemaxCheckBox(
                    boxShape: BoxShape.rectangle,
                    value: false,
                    onChanged: null,
                  ),
                ],
              ),
              Row(
                children: [
                  CinemaxSwith(
                    value: false,
                    onChanged: (p0) {},
                  ),
                  const SizedBox(width: 30),
                  CinemaxSwith(
                    value: true,
                    onChanged: (p0) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
