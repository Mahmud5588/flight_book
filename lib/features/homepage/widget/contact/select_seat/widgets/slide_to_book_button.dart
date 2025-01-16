import 'package:flutter/material.dart';
import 'double_check.dart';

class SlideToBookButton extends StatelessWidget {
  final bool isEnabled;

  const SlideToBookButton({
    super.key,
    required this.isEnabled, required Null Function() onPressed,
  });

  void _showDoubleCheckBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return const DoubleCheck();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: isEnabled
            ? () {
          _showDoubleCheckBottomSheet(context);
        }
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? Colors.blue : Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(
          "Slide to Book",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
