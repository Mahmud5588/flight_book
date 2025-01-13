import 'package:exam/features/account/widgets/container_geture.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = false;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Notifications Settings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Push Notifications Disabled",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                children: [
                  const Text("To enable notifications, go to"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Settings",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Activity",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Secure your account by keeping your log in, register, and OTP activity on track.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Email"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Push Notifications"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Special for you",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "You can never have too much of limited-time discount, exclusive offers, tips and info new feature.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Email"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Push Notifications"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Reminders",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Get important travel news and info, payment reminders, check-in reminder and more.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Email"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Push Notifications"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "Membership",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                "You’ll get emails about ticket Elite Rewards and surveys.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Email"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Push Notifications"),
              element: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                  activeTrackColor: const Color(0xFF0064D2),
                  inactiveTrackColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
