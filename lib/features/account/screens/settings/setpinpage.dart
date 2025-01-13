import 'package:exam/features/account/widgets/putinputpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../cores/routes/route_names.dart';

class SetPinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(CupertinoIcons.back, size: 30),
            ),
            const SizedBox(height: 100),
            const Text(
              "Set Pin",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Enter 6 digits number for your PIN. Make sure the combination is not easy to guess.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            PinInputField(
              keyboardType: TextInputType.number,
              onComplete: (pin) {
                Navigator.pushNamed(context, RouteNames.confirmYourPin);
              },
            ),
          ],
        ),
      ),
    );
  }
}
