import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/authentications/widgets/myElevatedButton.dart';
import 'package:exam/features/homepage/data_widget/radio_button.dart';
import 'package:exam/features/homepage/data_widget/textfield.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController fromController =
      TextEditingController(text: "New York, USA");
  final TextEditingController toController =
      TextEditingController(text: "Da Nang, Vietnam");
  final TextEditingController dateController =
      TextEditingController(text: "August 28, 2021");
  final TextEditingController travelersController =
      TextEditingController(text: "1 Adult, 1 Child, 0 Infant");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0064D2),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF0064D2),
        centerTitle: true,
        title: const Text(
          "Search Flight",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      "Discover a new world",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomRadioWidget(
                            options: ["One-way", "Round-trip"]),
                        const SizedBox(height: 8),
                        TextFieldHomePage(
                          title: const Text("From"),
                          icon: const Icon(Icons.flight_takeoff),
                          controller: fromController,
                        ),
                        TextFieldHomePage(
                          title: const Text("To"),
                          icon: const Icon(Icons.flight_land),
                          controller: toController,
                          image: const AssetImage("assets/images/change.png"),
                        ),
                        TextFieldHomePage(
                          title: const Text("Departure date"),
                          icon: const Icon(Icons.date_range),
                          controller: dateController,
                          isDateField: true, // Specify this as a date field
                        ),
                        TextFieldHomePage(
                          title: const Text("Travelers"),
                          icon: const Icon(Icons.person),
                          controller: travelersController,
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          child: MyElevatedButton(
                            text: "Search Flights",
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RouteNames.searchFlightPage);
                            },
                            icon: const Icon(null),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
