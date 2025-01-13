import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/account/widgets/container_geture.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.add,
          color: Color(0xFF0064D2),
        ),
        backgroundColor: const Color(0xFF0064D2),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF0064D2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                        radius: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jos Creative",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "josphamdes@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          Text(
                            "+1 654 785 4462",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    const ContainerGesture(
                      icons: Icon(
                        Icons.send,
                        color: Color(0xFF0064D2),
                      ),
                      text: Text("My Order",
                          style: TextStyle(color: Colors.black)),
                      element: Icon(Icons.navigate_next, color: Colors.grey),
                    ),
                    const ContainerGesture(
                      icons: Icon(
                        Icons.percent,
                        color: Color(0xFF0064D2),
                      ),
                      text: Text(
                        "My Voucher",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      element: ColoredBox(color: Colors.white),
                    ),
                    const ContainerGesture(
                      icons: Icon(
                        Icons.payment_sharp,
                        color: Color(0xFF0064D2),
                      ),
                      text: Text("Payment method",
                          style: TextStyle(color: Colors.black)),
                      element: Icon(Icons.navigate_next, color: Colors.grey),
                    ),
                    const ContainerGesture(
                      icons: Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Color(0xFF0064D2),
                      ),
                      text: Text(
                        "Invite friends",
                        style: TextStyle(color: Colors.black),
                      ),
                      element: Icon(Icons.navigate_next, color: Colors.grey),
                    ),
                    ContainerGesture(
                      icons: const Icon(
                        Icons.qr_code_scanner,
                        color: Color(0xFF0064D2),
                      ),
                      text: const Text("Quick login",
                          style: TextStyle(color: Colors.black)),
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
                    const ContainerGesture(
                      icons: Icon(
                        Icons.question_mark,
                        color: Color(0xFF0064D2),
                      ),
                      text: Text(
                        "My Orders",
                        style: TextStyle(color: Colors.black),
                      ),
                      element: Icon(Icons.navigate_next, color: Colors.grey),
                    ),
                    ContainerGesture(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.settings);
                      },
                      icons: const Icon(
                        Icons.settings,
                        color: Color(0xFF0064D2),
                      ),
                      text: const Text(
                        "Settings",
                        style: TextStyle(color: Colors.black),
                      ),
                      element:
                          const Icon(Icons.navigate_next, color: Colors.grey),
                    ),
                    const ContainerGesture(
                      icons: Icon(
                        Icons.login_outlined,
                        color: Color(0xFF0064D2),
                      ),
                      text: Text(
                        "Log Out",
                        style: TextStyle(color: Colors.black),
                      ),
                      element: Icon(Icons.navigate_next, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
