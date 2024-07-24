import 'package:bharat_connect/resources/auth_methods.dart';
import 'package:bharat_connect/screens/history_meeting_screen.dart';
import 'package:bharat_connect/screens/meeting_screen.dart';
import 'package:bharat_connect/utils/colors.dart';
import 'package:bharat_connect/widgets/custom_button.dart';
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

  List<Widget> pages = [
    const MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    CustomButton(onPressed: AuthMethods().signOut, buttontext: 'Logout')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet & Chat'),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[_page],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        unselectedFontSize: 14,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: onPageChanged,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet and Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout_outlined), label: 'Logout'),
        ],
      ),
    );
  }
}
