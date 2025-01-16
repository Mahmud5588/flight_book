
import 'package:flutter/material.dart';

class TicketData extends StatelessWidget {
  final String departureCity;
  final String departureAirport;
  final String arrivalCity;
  final String arrivalAirport;
  final String departureTime;
  final String arrivalTime;
  final String airline;
  final String price;
  final String travelDate;
  final String airlineAvatar; // Avatar rasm o'zgaruvchisi

  const TicketData({
    required this.departureCity,
    required this.departureAirport,
    required this.arrivalCity,
    required this.arrivalAirport,
    required this.departureTime,
    required this.arrivalTime,
    required this.airline,
    required this.price,
    required this.travelDate,
    required this.airlineAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                departureAirport,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/icons/flight_icon.png', // Samolyot rasm manzili
                width: 156,
                height: 18.15,
              ),
              Text(
                arrivalAirport,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(departureCity,
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text(departureTime,
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text(arrivalCity,
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
          Divider(color: Colors.grey, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                departureTime,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                arrivalTime,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(travelDate,
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text("Arrival: $travelDate",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
          Divider(color: Colors.grey, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Startni qo'shish
            children: [
              // Avatar qo'shish
              CircleAvatar(
                radius: 18,
                backgroundImage:
                AssetImage(airlineAvatar), // Avatar rasm manzili
              ),
              SizedBox(width: 8),
              Text(
                airline,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
