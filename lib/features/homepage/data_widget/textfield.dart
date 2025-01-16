import 'package:flutter/material.dart';

class TextFieldHomePage extends StatelessWidget {
  final Text title;
  final Icon icon;
  final TextEditingController controller;
  final AssetImage? image;
  final bool isDateField;

  const TextFieldHomePage({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    this.image,
    this.isDateField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title,
                  if (image != null) Image(image: image!),
                ],
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: icon,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Enter text here',
              ),
              onTap: isDateField
                  ? () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              colorScheme: const ColorScheme.light(
                                primary: Colors.teal,
                                onPrimary: Colors.white,
                                surface: Colors.white,
                                onSurface: Colors.black,
                              ),
                              dialogBackgroundColor: Colors.blue.shade50,
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (selectedDate != null) {
                        controller.text =
                            selectedDate.toLocal().toString().split(' ')[0];
                      }
                    }
                  : null,
              readOnly: isDateField,
            ),
          ],
        ),
      ),
    );
  }
}
