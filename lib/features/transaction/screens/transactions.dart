import 'package:exam/features/authentications/widgets/myElevatedButton.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14),
          child: Column(
            children: [
              const Text(
                "Transaction",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.black),
              ),
              Image.asset("assets/images/transaction.png"),
              const SizedBox(height: 30),
              const Text(
                "Let's go somewhere",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "After book a trip you can manage orders and see E-ticket here.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              MyElevatedButton(
                text: "Book a trip",
                onPressed: () {},
                icon: const Icon(null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
