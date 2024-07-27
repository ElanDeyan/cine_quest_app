import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    super.key,
    required this.icon,
    required this.label,
    this.axis = Axis.horizontal,
    required this.gap,
  });

  final Icon icon;
  final Axis axis;
  final double gap;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                width: gap,
              ),
              label,
            ],
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                height: gap,
              ),
              label,
            ],
          );
  }
}
