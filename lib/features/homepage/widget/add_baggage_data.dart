import 'package:flutter/material.dart';

class SelectBaggageDateWidget extends StatefulWidget {
  final TextEditingController dateController;

  const SelectBaggageDateWidget({super.key, required this.dateController});

  @override
  State<SelectBaggageDateWidget> createState() =>
      _SelectBaggageDateWidgetState();
}

class _SelectBaggageDateWidgetState extends State<SelectBaggageDateWidget> {
  int selectedWeightIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  'Add Baggage',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1. Matt Murdock',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildWeightOption(0, '0Kg', 'Free'),
                  _buildWeightOption(1, '5 Kg', 'Rp 210.000'),
                  _buildWeightOption(2, '10 Kg', 'Rp 510.000'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '1. Matt Murdock',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rp. 210.000',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rp. 210.000',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),

          const SizedBox(height: 16),

          Center(
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);                },
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Markazda joylashadi
                  children: [
                    Icon(
                      Icons.add_circle, // Qo'shish ikonkasi
                      color: Colors.white, // Rangni matnga moslash
                      size: 20, // Ikonka o'lchami
                    ),
                    SizedBox(width: 8), // Bo'sh joy
                    Text(
                      'Add Baggage',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  Widget _buildWeightOption(int index, String weight, String price) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedWeightIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        decoration: BoxDecoration(
          color: selectedWeightIndex == index ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: selectedWeightIndex == index ? Colors.blue : Colors.white),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              weight,
              style: TextStyle(
                fontSize: 24,
                color:
                    selectedWeightIndex == index ? Colors.white : Colors.black,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 12,
                color:
                    selectedWeightIndex == index ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
