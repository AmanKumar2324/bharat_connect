import 'package:bharat_connect/utils/colors.dart';
import 'package:bharat_connect/widgets/home_meeting_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet & Chat'),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeMeetingButtonWidget(
                    onPressed: () {},
                    icon: Icons.videocam,
                    text: 'New Meeting'),
                HomeMeetingButtonWidget(
                    onPressed: () {},
                    icon: Icons.add_box_rounded,
                    text: 'Join Meeting'),
                HomeMeetingButtonWidget(
                    onPressed: () {},
                    icon: Icons.calendar_today,
                    text: 'Schedule'),
                HomeMeetingButtonWidget(
                    onPressed: () {},
                    icon: Icons.arrow_upward_rounded,
                    text: 'Share Screen')
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Create/Join meeting with just a click!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        unselectedFontSize: 14,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: onPageChanged,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet and Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meetings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet and Chat'),
        ],
      ),
    );
  }
}
