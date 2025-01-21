import 'package:exam/features/homepage/widget/add_baggage_data.dart';
import 'package:exam/features/homepage/widget/contact/contact_person_detail.dart';
import 'package:exam/features/homepage/widget/contact/select_seat/select_seat.dart';
import 'package:flutter/material.dart';

class ContactDetailsPages extends StatelessWidget {
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Flights Title moved to body
            Text(
              'Search Flights',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Contact Details',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text('M'),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Matt Murdock',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text('imnotdaredevil@mail.com'),
                        Text('+628123223922'),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ContactDetailsPage()),
                      );
                    },
                    child: Text('Edit'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Passenger Info Section
            Text(
              'Passenger Info',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              value: true,
              onChanged: (value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PassengerInfoPage()), // HomePage sahifasiga o'tish
                );
              },
              title: Text('Same As Contact Details'),
              activeTrackColor: Colors.blue,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Selena Kayle'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            SizedBox(height: 24),

            // Facility Section
            Text(
              'Facility',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Baggage'),
              subtitle: Text('Add extra baggage'),
              trailing: Icon(Icons.add),
              onTap: () {
                _showDatePicker(context, dateController); // Add baggage dialogni ochish
              },
            ),
            SizedBox(height: 24),

            // Extra Protection Section
            Text(
              'Extra Protection',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            'Travel Insurance',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        '\$125',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '✔ Coverage for Accidents up to \$10000',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                  Text(
                    '✔ Coverage for trip cancellation by passengers up to \$1250',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                  SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle, color: Colors.blue),
                        SizedBox(width: 8),
                        Text('Add Insurance', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey, width: 2), // Border qo'shish
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Burchaklarni yumshatish
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // To place them side by side
              children: [
                // Subtotal Text moved to the bottom
                Column(
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SeatBookingPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Select Seat',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.check_circle, size: 20),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF007BFF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Baggage date picker method
  void _showDatePicker(BuildContext context, TextEditingController dateController) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SelectBaggageDateWidget(dateController: dateController);
      },
    );
  }
}
