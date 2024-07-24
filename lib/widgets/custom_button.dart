import 'package:bharat_connect/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttontext;
  final VoidCallback onPressed;
  const CustomButton(
      {required this.onPressed, required this.buttontext, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.grey.withOpacity(0.8),
            // backgroundBuilder: buttonColor,
            backgroundColor: backgroundColor.withOpacity(1),
            minimumSize: const Size(double.infinity, 50)),
        onPressed: onPressed,
        child: Text(
          buttontext,
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ));
  }
}
