import 'package:exam/features/authentications/widgets/myElevatedButton.dart';
import 'package:flutter/material.dart';

class EmailNumber extends StatelessWidget {
  const EmailNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email and Phone Number",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.grey,
                  ),
                  Text(
                    "Unverified",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+849328704640",
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MyElevatedButton(
                text: "Enter",
                onPressed: () {},
                icon: const Icon(null),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "You will receive  every transaction & security information on this email.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
