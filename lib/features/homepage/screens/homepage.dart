import 'package:exam/features/homepage/widgets/select_date_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

bool isTap = true;

class _HomePageState extends State<Homepage> {
  final TextEditingController fromController =
      TextEditingController(text: 'New York, USA');
  final TextEditingController toController =
      TextEditingController(text: 'Da Nang, Vietnam');
  final TextEditingController dateController =
      TextEditingController(text: 'August 28, 2021');
  final TextEditingController travelersController =
      TextEditingController(text: '1 Adult, 1 Child, 0 Infant');

  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    dateController.dispose();
    travelersController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PreferredSize(
            preferredSize: const Size.fromHeight(180), // AppBar height
            child: AppBar(
              backgroundColor: Colors.blue,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: const Text(
                'Search Flights',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              flexibleSpace: Stack(
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  const Positioned(
                    left: 16,
                    top: 100,
                    child: Text(
                      'Discover\na new world',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 240, // Below AppBar
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<bool>(
                              title: const Text('One-way'),
                              value: true,
                              groupValue: isTap,
                              onChanged: (value) {
                                setState(() {
                                  isTap = value!;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<bool>(
                              title: const Text('Round-trip'),
                              value: false,
                              groupValue: isTap,
                              onChanged: (value) {
                                setState(() {
                                  isTap = value!;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      _buildEditableTextField(
                          'From', Icons.flight_takeoff, fromController),
                      const SizedBox(height: 15),
                      _buildEditableTextField(
                          'To', Icons.flight_land, toController),
                      const SizedBox(height: 15),
                      _buildReadOnlyTextField('Departure Date',
                          Icons.calendar_today, dateController),
                      const SizedBox(height: 15),
                      _buildEditableTextField(
                          'Travelers', Icons.person, travelersController),
                      const SizedBox(height: 90),
                      ElevatedButton(
                        onPressed: () {
                          // Action when "Search flights" button is pressed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Search flights',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableTextField(
      String label, IconData icon, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildReadOnlyTextField(
      String label, IconData icon, TextEditingController controller) {
    return GestureDetector(
      onTap: () {
        _showDatePicker(context);
      },
      child: AbsorbPointer(
        child: TextField(
          controller: controller,
          readOnly: true,
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
      ),
    );
  }

  void _showDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SelectDateWidget(dateController: dateController);
      },
    );
  }
}
