import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/homepage/screens/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({super.key});

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavbar()), // HomePage sahifasiga o'tish
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text('Southwest Airlines', style: TextStyle(fontSize: 16)),
                        ),
                        Text('Executive', style: TextStyle(color: Colors.grey[700], fontSize: 16)),
                      ],
                    ),
                    // Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GTH', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                            Text('14.00', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {}, // Action for the button
                          child: Icon(CupertinoIcons.airplane, size: 25, color: Colors.blue,),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('KHQ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                            Text('07:15', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    // Divider(),
                    Row(
                      children: [
                        const Icon(Icons.person, color: Colors.blue,size: 20,),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text('2 Person ⚡ Premium', style: TextStyle(fontSize: 12)),
                        ),
                        Text('IDR 350.000/Pax', style: TextStyle(fontSize: 12, color: Colors.grey[700])),
                      ],
                    ),
                    // Divider(),
                    Row(
                      children: [
                        const Icon(Icons.circle, color: Colors.grey, size: 25,),
                        const SizedBox(width: 10),
                        const Expanded(child: Text('Matt Murdock', style: TextStyle(fontSize: 16),
                        ),
                        ),
                        TextButton(
                          onPressed: () {}, // Edit action
                          child: const Text('Edit', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                transactionDetailRow('Status', 'Success', leftWeight: FontWeight.normal, leftColor: Colors.grey, rightWeight: FontWeight.normal, rightColor: Colors.blue, fontWeight: FontWeight.normal),
                transactionDetailRow('Invoice', 'INV23124131332', leftWeight: FontWeight.normal, rightWeight: FontWeight.bold, leftColor: Colors.grey, rightColor: Colors.black, fontWeight: FontWeight.normal),
                transactionDetailRow('Transaction Date', 'Wed, 18 Oct 2022', leftWeight: FontWeight.normal, rightWeight: FontWeight.bold, leftColor: Colors.grey, rightColor: Colors.black, fontWeight: FontWeight.normal),
                transactionDetailRow('Payment Method', 'Paytren', leftWeight: FontWeight.normal, rightWeight: FontWeight.bold, leftColor: Colors.grey, rightColor: Colors.black, fontWeight: FontWeight.normal),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Orqafoni oq rangga o'zgartirilgan
                    border: Border.all(color: Colors.grey.shade300), // Chegarani ko'rsatish
                    borderRadius: BorderRadius.circular(5.0), // Burchaklarini yumaloqlashtirish
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Soya berish
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            transactionDetailRow('1. Matt Murdock', 'Rp. 210.000', leftWeight: FontWeight.normal, rightWeight: FontWeight.normal, leftColor: Colors.grey, rightColor: Colors.grey, fontWeight: FontWeight.normal),
                            transactionDetailRow('Total', 'Rp. 210.000', leftWeight: FontWeight.normal, rightWeight: FontWeight.bold, leftColor: Colors.grey, rightColor: Colors.black, fontWeight: FontWeight.normal),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFCE9E9), // Tugma fon rangi
                    minimumSize: const Size(double.infinity, 50), // Tugma o'lchami
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Burchaklarning radiusi
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Ichki padding
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Markazlash
                    children: [
                      Text(
                        'Refund or Reschedule Ticket',
                        style: TextStyle(fontSize: 14, color: Colors.red), // Matn uslubi
                      ),
                      SizedBox(width: 8), // Matn va ikonka orasidagi masofa
                      Icon(
                        Icons.arrow_circle_right, // Ikonka turi
                        size: 20, // Ikonka o'lchami
                        color: Colors.red, // Ikonka rangi
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 27),
                Center(
                  child: SizedBox(
                    width: 327,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.homePage

                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Enter',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget transactionDetailRow(String title, String value, {FontWeight leftWeight = FontWeight.normal, FontWeight rightWeight = FontWeight.normal, Color leftColor = Colors.black, Color rightColor = Colors.black, required FontWeight fontWeight}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: leftWeight, color: leftColor)),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: rightWeight, color: rightColor)),
        ],
      ),
    );
  }
}
