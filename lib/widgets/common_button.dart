import 'package:flutter/material.dart';

class CommonOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor; // REQUIRED
  // final Color borderColor;     // REQUIRED
  final Color textColor;       // REQUIRED
  final double borderWidth;
  final double borderRadius;
  final double height;
  final double width;
  final TextStyle? textStyle;

  const CommonOutlineButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.backgroundColor,
    // required this.borderColor,
    required this.textColor,
    this.borderWidth = 1.18,
    this.borderRadius = 30.0,
    this.height = 53,
    this.width = 193,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
          border: Border.all(
            // color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
