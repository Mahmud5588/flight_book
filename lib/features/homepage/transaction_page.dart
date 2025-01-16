import 'package:exam/cores/routes/route_names.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transaction',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                  'assets/images/transaction.png'), // Rasimni joylash uchun
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                "Let's go somewhere",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "After book a trip you can manage orders and",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Center(
              child: Text(
                " see E-ticket here.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity, // Tugmani butun kenglikka cho'zadi
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.transactionDetail);
                  },
                  child: Text(
                    'Book a trip',
                    textAlign:
                        TextAlign.center, // Matnni markazga joylashtirish
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Tugma rangi
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 16),
                    shape: RoundedRectangleBorder(
                      // Tugmani chetlarini yumaloqlashtirish
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
