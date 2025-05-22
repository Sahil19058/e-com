import 'package:flutter/material.dart';

class CommonOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap; // <-- This must be nullable
  final Color backgroundColor;
  final Color textColor;

  const CommonOutlineButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap, // Accepts null or a function
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
