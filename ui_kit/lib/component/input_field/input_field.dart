import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.controller,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixOnTap,
    this.suffixOnTap,
    this.keyboardType,
    this.isPassword = false,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? prefixOnTap;
  final VoidCallback? suffixOnTap;
  final TextInputType? keyboardType;
  final bool isPassword;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final style = context.inputFieldStyle;
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      style: style.textStyle,
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: isObscure,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        contentPadding: style.contentPadding,
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: style.amountIconPadding,
                child: GestureDetector(
                  onTap: widget.prefixOnTap,
                  child: Icon(
                    widget.prefixIcon,
                  ),
                ),
              )
            : null,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : widget.suffixIcon != null
                ? Padding(
                    padding: style.amountIconPadding,
                    child: GestureDetector(
                      onTap: widget.suffixOnTap,
                      child: Icon(
                        widget.suffixIcon,
                      ),
                    ),
                  )
                : null,
        focusedBorder: style.focusBorder,
        border: style.border,
        errorBorder: style.errorBorder,
        labelText: widget.labelText,
        fillColor: style.fillColor,
        filled: true,
        labelStyle: style.labelStyle,
        floatingLabelStyle: style.floatingLabelStyle,
        errorStyle: style.errorTextStyle,
      ),
    );
  }
}
