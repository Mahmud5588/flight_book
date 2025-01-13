import 'package:exam/cores/routes/route_names.dart';
import 'package:flutter/material.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
  String? _selectedVerification = "Double verification";
  bool _biometricEnabled = true;
  bool _deviceTrusted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Security Settings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Credit Card Section
            buildSection(
              title: "Credit Card",
              content: Column(
                children: [
                  buildRadioOption(
                    title: "Double Verification",
                    description:
                        "Enter CVV & OTP code for more secure payment verification.",
                    value: "Double verification",
                  ),
                  const Divider(),
                  buildRadioOption(
                    title: "Single Verification",
                    description:
                        "Enter CVV & OTP code for a swift & hassle-free payment verification.",
                    value: "Single verification",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Biometric Section
            buildSection(
              title: "Biometric",
              content: buildSwitchOption(
                title: "Activate Biometric Feature",
                description:
                    "To enjoy a seamless log in with fingerprint or face recognition.",
                value: _biometricEnabled,
                onChanged: (value) {
                  setState(() {
                    _biometricEnabled = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            // Device Section
            buildSection(
              title: "Device",
              content: buildSwitchOption(
                title: "Set Device as Trusted",
                description:
                    "Activate to set a PIN and manage device connectivity.",
                value: _deviceTrusted,
                onChanged: (value) {
                  if (value) {
                    _showMyDialog(context);
                  } else {
                    setState(() {
                      _deviceTrusted = value;
                    });
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            // PIN Section
            buildSection(
              title: "Pin",
              content: ListTile(
                title: const Text(
                  "Set PIN",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                subtitle: const Text(
                  "Set a 6 digit verification PIN to secure your accounts activities.",
                  style: TextStyle(fontSize: 12),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.setPinPage);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection({required String title, required Widget content}) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            content,
          ],
        ),
      ),
    );
  }

  Widget buildRadioOption({
    required String title,
    required String description,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ),
            Radio<String>(
              value: value,
              groupValue: _selectedVerification,
              onChanged: (newValue) {
                setState(() {
                  _selectedVerification = newValue;
                });
              },
              activeColor: Colors.blue,
            ),
          ],
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  Widget buildSwitchOption({
    required String title,
    required String description,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: value,
                onChanged: onChanged,
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.grey[200],
              ),
            ),
          ],
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    bool proceed = false;
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Continue and set device as trusted?"),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text("To set a PIN, this device needs to be set as trusted"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("No, Cancel"),
            ),
            TextButton(
              onPressed: () {
                proceed = true;
                Navigator.pop(context);
              },
              child: const Text("Yes, Continue"),
            ),
          ],
        );
      },
    );
    if (proceed) {
      setState(() {
        _deviceTrusted = true;
      });
    } else {
      setState(() {
        _deviceTrusted = false;
      });
    }
  }
}
