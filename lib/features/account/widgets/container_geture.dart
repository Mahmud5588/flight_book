import 'package:flutter/material.dart';

class ContainerGesture extends StatelessWidget {
  final Icon icons;
  final Text text;
  final dynamic element;
  final VoidCallback? onTap;

  const ContainerGesture(
      {super.key,
      required this.icons,
      required this.text,
      this.element,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[100]!,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icons,
                  const SizedBox(
                    width: 20,
                  ),
                  text,
                ],
              ),
              element,
            ],
          ),
        ),
      ),
    );
  }
}
