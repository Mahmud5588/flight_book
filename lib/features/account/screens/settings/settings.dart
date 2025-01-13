import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/account/widgets/container_geture.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "General",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Language"),
              element: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pushNamed(context, RouteNames.language);
              },
            ),
            ContainerGesture(
                icons: const Icon(null),
                text: const Text("Notification Settings"),
                element: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.notifications);
                }),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Locations"),
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
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Account & Security",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Email and Phone Number"),
              element: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pushNamed(context, RouteNames.emailNumber);
              },
            ),
            ContainerGesture(
              icons: const Icon(null),
              text: const Text("Security Setting"),
              element: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pushNamed(context, RouteNames.securitySetting);
              },
            ),
            const ContainerGesture(
              icons: Icon(null),
              text: Text("Delete Account"),
              element: Icon(Icons.navigate_next),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Other",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            const ContainerGesture(
              icons: Icon(null),
              text: Text("About Indochina Travel App"),
              element: Icon(Icons.navigate_next),
            ),
            const ContainerGesture(
              icons: Icon(null),
              text: Text("Privacy policy"),
              element: Icon(Icons.navigate_next),
            ),
            const ContainerGesture(
              icons: Icon(null),
              text: Text("Terms and Conditions"),
              element: Icon(Icons.navigate_next),
            ),
            const ContainerGesture(
              icons: Icon(null),
              text: Text("Rate app "),
              element: Text("v4.87.2"),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
