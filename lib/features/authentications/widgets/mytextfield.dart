import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String? text;
  String? labelText;
  MyTextField({super.key, required String this.text, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          label: Text(labelText as String),
        ),
      ),
    );
  }
}
