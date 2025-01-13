import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Icon? icon;
  VoidCallback? onPressed;

  Button({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(color: Color(0xFFF2F3F6), width: 2),
          ),
          backgroundColor: const Color(0xFFF2F3F6),
        ),
        onPressed: onPressed,
        child: icon,
      ),
    );
  }
}
