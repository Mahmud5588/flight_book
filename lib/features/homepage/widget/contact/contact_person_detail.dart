import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  @override
  _ContactDetailsPageState createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  bool _isMale = true;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Person Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: Text('Male'),
              leading: Radio(
                value: true,
                groupValue: _isMale,
                onChanged: (bool? value) {
                  setState(() {
                    _isMale = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Female'),
              leading: Radio(
                value: false,
                groupValue: _isMale,
                onChanged: (bool? value) {
                  setState(() {
                    _isMale = value!;
                  });
                },
              ),
            ),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone number'),
            ),
            TextField(
              controller: _idController,
              decoration: InputDecoration(labelText: 'ID card number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save changes action
              },
              child: Text('Save changes'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PassengerInfoPage extends StatelessWidget {
  final bool isMale;
  final TextEditingController fullNameController =
      TextEditingController(text: 'Cameron Williamson');
  final TextEditingController emailController =
      TextEditingController(text: 'williamson@gmail.com');
  final TextEditingController idCardController =
      TextEditingController(text: '12867358234523');

  PassengerInfoPage({this.isMale = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ContactDetailsPage()), // HomePage sahifasiga o'tish
            );
          }
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Passenger Info",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<bool>(
                      title: const Text('Male'),
                      value: true,
                      groupValue: isMale,
                      onChanged: (value) {},
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<bool>(
                      title: const Text('Female'),
                      value: false,
                      groupValue: isMale,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Full Name',
                controller: fullNameController,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Email Address',
                controller: emailController,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'ID card number',
                controller: idCardController,
              ),
              const SizedBox(height: 8),
              const Text(
                'This contact is for e-ticket and refund/rescheduling',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ContactDetailsPage()), // HomePage sahifasiga o'tish
                    );
                    print('Save changes');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Save changes',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}
