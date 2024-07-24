import 'package:bharat_connect/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeMeetingButtonWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  const HomeMeetingButtonWidget(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.text});

  @override
  State<HomeMeetingButtonWidget> createState() =>
      _HomeMeetingButtonWidgetState();
}

class _HomeMeetingButtonWidgetState extends State<HomeMeetingButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            height: 60,
            width: 60,
            child: Icon(
              widget.icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.text,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
