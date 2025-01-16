import 'package:flutter/material.dart';

class SearchFlightsSection extends StatelessWidget {
  const SearchFlightsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToggleButtonsSection(),
            const SizedBox(height: 16),
            buildInputField(
              icon: Icons.flight_takeoff,
              label: "From",
              value: "New York, USA",
            ),
            const SizedBox(height: 8),
            buildInputField(
              icon: Icons.flight_land,
              label: "To",
              value: "Da Nang, Vietnam",
            ),
            const SizedBox(height: 8),
            buildInputField(
              icon: Icons.calendar_today,
              label: "Departure Date",
              value: "August 28, 2021",
            ),
            const SizedBox(height: 8),
            buildInputField(
              icon: Icons.person,
              label: "Travelers",
              value: "1 Adult, 1 Child, 0 Infant",
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Search flights"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputField({required IconData icon, required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.blue),
              const SizedBox(width: 16),
              Text(value, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }

  Widget ToggleButtonsSection() {
    bool isOneWay = true;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ListTile(
            leading: Radio(
              value: true,
              groupValue: isOneWay,
              onChanged: (bool? value) {},
            ),
            title: const Text("One-way", style: TextStyle(fontSize: 16)),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: Radio(
              value: false,
              groupValue: !isOneWay,
              onChanged: (bool? value) {},
            ),
            title: const Text("Round-trip", style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
