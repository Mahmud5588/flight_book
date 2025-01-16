import 'package:exam/features/account/widgets/a.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Digital payment method(s)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Swipe left to set your default method",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColoredBox(
                          color: Colors.black,
                          child: Image.asset('assets/images/card.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("***8976"),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/succes.png",
                                  scale: 1,
                                  color: Colors.yellow[700],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Get 10\$ discount")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Radio(
                      activeColor: Colors.blue,
                      value: 1,
                      groupValue: _selectedValue,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColoredBox(
                          color: Colors.black,
                          child: Image.asset('assets/images/paypal.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("PayPal"),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/succes.png",
                                  scale: 1,
                                  color: Colors.yellow[700],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Get 10\$ discount")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Radio(
                      activeColor: Colors.blue,
                      value: 2,
                      groupValue: _selectedValue,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  " Add Methods",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.credit_card,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Credit or debit card"),
                            const Text("Visa, Mastercard, AMEX and JCB"),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/succes.png",
                                  scale: 1,
                                  color: Colors.yellow[700],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Get 10\$ discount")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.blue),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Credit or debit card"),
                            const Text(
                                "Transferring via ATM, Internet\n Banking & Mobile Banking"),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/succes.png",
                                  scale: 1,
                                  color: Colors.yellow[700],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Get 10\$ discount")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.blue),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.white,
          child: Bottom(text: Text("Proceed The Payment")),
        ));
  }
}
