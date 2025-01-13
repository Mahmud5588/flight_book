import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  final Icon icon;

  MyElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF0064D2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text as String,
              style: const TextStyle(color: Colors.white),
            ),
            icon
          ],
        ),
      ),
    );
  }
}
