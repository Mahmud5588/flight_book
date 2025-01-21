import 'package:exam/features/homepage/screens/bottomnavbar.dart';
import 'package:exam/features/homepage/screens/homepage.dart';
import 'package:exam/features/homepage/widget/contact/contact_details.dart';
import 'package:exam/features/homepage/widget/search_flight_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';

class SearchFlightsPage extends StatelessWidget {
  const SearchFlightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavbar()), // HomePage sahifasiga o'tish
            );
          },
        ),
        title: const Text(
          'Search Flights',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
      ),

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/world_map.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              // Ticket 1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactDetailsPages(),
                      ),
                    );
                  },
                  child: const TicketWidget(
                    width: 305,
                    height: 192,
                    isCornerRounded: true,
                    padding: EdgeInsets.all(12),
                    child: TicketData(
                      departureCity: "New York",
                      departureAirport: "JFK",
                      arrivalCity: "Los Angeles",
                      arrivalAirport: "LAX",
                      departureTime: "9:00 AM",
                      arrivalTime: "11:30 AM",
                      airline: "American Airlines",
                      price: "\$300",
                      travelDate: "July 15, 2025",
                      airlineAvatar: 'assets/icons/airlines_avatar.png',
                    ),
                  ),
                ),
              ),
              // Ticket 2
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactDetailsPages(),
                      ),
                    );
                  },
                  child: const TicketWidget(
                    width: 305,
                    height: 192,
                    isCornerRounded: true,
                    padding: EdgeInsets.all(12),
                    child: TicketData(
                      departureCity: "San Francisco",
                      departureAirport: "SFO",
                      arrivalCity: "Miami",
                      arrivalAirport: "MIA",
                      departureTime: "12:00 PM",
                      arrivalTime: "8:00 PM",
                      airline: "Delta Airlines",
                      price: "\$450",
                      travelDate: "August 10, 2025",
                      airlineAvatar: 'assets/icons/airlines_avatar.png',
                    ),
                  ),
                ),
              ),
              // Ticket 3
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactDetailsPages(),
                      ),
                    );
                  },
                  child: const TicketWidget(
                    width: 305,
                    height: 192,
                    isCornerRounded: true,
                    padding: EdgeInsets.all(12),
                    child: TicketData(
                      departureCity: "Chicago",
                      departureAirport: "ORD",
                      arrivalCity: "Boston",
                      arrivalAirport: "BOS",
                      departureTime: "7:30 AM",
                      arrivalTime: "10:00 AM",
                      airline: "United Airlines",
                      price: "\$250",
                      travelDate: "September 5, 2025",
                      airlineAvatar: 'assets/icons/airlines_avatar.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
