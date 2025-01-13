import 'package:flutter/material.dart';

class CustomRadioWidget extends StatefulWidget {
  final List<String> options;

  const CustomRadioWidget({
    super.key,
    required this.options,
  });

  @override
  _CustomRadioWidgetState createState() => _CustomRadioWidgetState();
}

class _CustomRadioWidgetState extends State<CustomRadioWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: widget.options.map((option) {
        return Row(
          children: [
            Radio<String>(
              value: option,
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              },
              activeColor: Colors.blue,
            ),
            Text(option),
          ],
        );
      }).toList(),
    );
  }
}
