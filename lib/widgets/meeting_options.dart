import 'package:bharat_connect/utils/colors.dart';
import 'package:flutter/material.dart';

class MeetingOptionsWidget extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;
  const MeetingOptionsWidget(
      {super.key,
      required this.text,
      required this.isMute,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Switch(
              activeColor: Colors.black,
              activeTrackColor: Colors.grey,
              inactiveTrackColor: Colors.white,
              // inactiveThumbColor: footerColor,
              value: isMute,
              onChanged: onChange,
            ),
          )
        ],
      ),
    );
  }
}
