import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class CinemaxCheckBox extends StatefulWidget {
  const CinemaxCheckBox({
    Key? key,
    required this.value,
    this.onChanged,
    this.boxShape,
  }) : super(key: key);

  final bool value;
  final void Function()? onChanged;
  final BoxShape? boxShape;

  @override
  State<CinemaxCheckBox> createState() => _CinemaxCheckBoxState();
}

class _CinemaxCheckBoxState extends State<CinemaxCheckBox>
    with TickerProviderStateMixin {
  late final AnimationController _buttonAnimationController;
  late final Animation<double> _scaleAnimation;
  final Duration _animationDuration = const Duration(milliseconds: 100);

  @override
  void initState() {
    _buttonAnimationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );
    _scaleAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _buttonAnimationController,
        curve: Curves.bounceInOut,
      ),
    );

    _animateButton(widget.value);

    super.initState();
  }

  void _animateButton(bool value) {
    if (value) {
      _buttonAnimationController.forward();
    } else {
      _buttonAnimationController.reverse();
    }
  }

  @override
  void dispose() {
    _buttonAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged?.call();
        _animateButton(!widget.value);
      },
      child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: widget.boxShape == null
                ? BoxShape.circle
                : widget.boxShape == BoxShape.circle
                    ? BoxShape.circle
                    : BoxShape.rectangle,
            borderRadius: widget.boxShape == BoxShape.rectangle
                ? const BorderRadius.all(Radius.circular(3))
                : null,
            color: Colors.transparent,
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 24,
            width: 24,
            child: AnimatedBuilder(
              animation: _buttonAnimationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: widget.boxShape == null
                              ? BoxShape.circle
                              : widget.boxShape == BoxShape.circle
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                          borderRadius: widget.boxShape == BoxShape.rectangle
                              ? const BorderRadius.all(Radius.circular(3))
                              : null,
                          color: PrimaryColor.blueAccent,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
