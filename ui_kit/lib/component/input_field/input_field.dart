import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.controller,
    this.labelText,
    this.sufficIcon,
    this.prefixIcon,
    this.prefixOnTap,
    this.suffixOnTap,
    this.keyboardType,
    this.obscureText = false,
  });

  final TextEditingController? controller;
  final String? labelText;
  final IconData? sufficIcon;
  final IconData? prefixIcon;
  final VoidCallback? prefixOnTap;
  final VoidCallback? suffixOnTap;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final style = context.inputTextStyle;
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: style.textStyle,
      decoration: InputDecoration(
        contentPadding: style.contentPadding,
        suffixIcon: sufficIcon != null
            ? Padding(
                padding: style.amountIconPadding,
                child: GestureDetector(
                  onTap: suffixOnTap,
                  child: Icon(
                    sufficIcon,
                  ),
                ),
              )
            : null,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: style.amountIconPadding,
                child: GestureDetector(
                  onTap: suffixOnTap,
                  child: Icon(
                    prefixIcon,
                  ),
                ),
              )
            : null,
        errorText: 'Ошибка',
        focusedBorder: style.focusBorder,
        border: style.border,
        errorBorder: style.errorBorder,
        labelText: labelText,
        fillColor: style.fillColor,
        filled: true,
        labelStyle: style.labelStyle,
        floatingLabelStyle: style.floatingLabelStyle,
        errorStyle: style.errorTextStyle,
      ),
    );
  }
}
