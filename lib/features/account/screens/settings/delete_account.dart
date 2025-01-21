import 'package:exam/features/authentications/screens/onBoarding.dart';
import 'package:exam/features/authentications/screens/sign_in.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  bool _isChecked = false;

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
        // Scrollable area
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Column(
          children: [
            const Text(
              "Delete Account",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/images/a.png")],
            ),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: 'If you delete your account:\n',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  TextSpan(
                    text: 'Your remaining ticket Points ',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  TextSpan(
                    text: 'cannot be used anymore.\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Your ticket Elite Rewards benefits ',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  TextSpan(
                    text: 'will not be available anymore.\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'All your pending rewards ',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  TextSpan(
                    text: 'will be deleted.\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'All rewards from using credit card ',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  TextSpan(
                    text: 'can no longer be obtained.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    value: _isChecked,
                    activeColor: Colors.blue,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    }),
                const Text(
                    'I understand and accept all the above \n risks regarding my account deletion')
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _isChecked ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  } : null;
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isChecked ? Colors.blue : Colors.blue[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
