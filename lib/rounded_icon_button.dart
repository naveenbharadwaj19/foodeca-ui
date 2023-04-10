import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final Alignment alignment;
  final EdgeInsets? edgeInsets;
  final double height;
  final double width;
  final double radius;
  final Color? bgColor;
  final IconData icon;
  final double size;
  final Color? iconColor;
  final void Function()? onTap;

  RoundedIconButton({
    super.key,
    this.alignment = Alignment.center,
    this.edgeInsets,
    this.height = 40,
    this.width = 40,
    this.radius = 10,
    this.bgColor,
    required this.icon,
    this.size = 24,
    this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: edgeInsets,
      child: InkWell(
        onTap: onTap,
        child: Ink(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                color: bgColor),
            child: Icon(icon, size: size, color: iconColor)),
      ),
    );
  }
}
