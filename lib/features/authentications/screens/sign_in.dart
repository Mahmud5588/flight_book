import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/authentications/widgets/button.dart';
import 'package:exam/features/authentications/widgets/myElevatedButton.dart';
import 'package:exam/features/authentications/widgets/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: const Icon(Icons.arrow_back),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                  color: Color(0xff0d1634),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Start Your Journey with affordable price",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(text: "Enter your email", labelText: "Email"),
              const SizedBox(
                height: 20,
              ),
              MyTextField(text: "Enter your password", labelText: "password"),
              const SizedBox(
                height: 20,
              ),
              MyElevatedButton(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.homePage);
                },
                icon: const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Or Sign In with",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Button(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.black,
                    ),
                  ),
                  Button(
                    onPressed: () {},
                    icon: Icon(
                      MdiIcons.google,
                      color: Colors.black,
                    ),
                  ),
                  Button(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have  an account ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.signUp);
                      },
                      child: const Text("Sign Up"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
