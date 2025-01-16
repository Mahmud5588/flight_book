import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  final Text text;
  const Bottom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // To place them side by side
        children: [
          // Subtotal Text moved to the bottom
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Subtotal: ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$132',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF007BFF),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            child: Row(
              children: [
                text,
                const SizedBox(width: 8),
                const Icon(Icons.check_circle, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
