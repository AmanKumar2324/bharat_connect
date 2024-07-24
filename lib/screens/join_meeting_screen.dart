import 'package:bharat_connect/resources/auth_methods.dart';
import 'package:bharat_connect/utils/colors.dart';
import 'package:bharat_connect/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class JoinMeetingScreen extends StatefulWidget {
  const JoinMeetingScreen({super.key});

  @override
  State<JoinMeetingScreen> createState() => _JoinMeetingScreenState();
}

class _JoinMeetingScreenState extends State<JoinMeetingScreen> {
  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController meetingController;
  late TextEditingController nameController;
  @override
  void initState() {
    meetingController = TextEditingController();
    nameController = TextEditingController(text: _authMethods.user.displayName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Meeting'),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.white,
              controller: meetingController,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(

                  // fillColor: Colors.grey.withOpacity(0.2),
                  fillColor: footerColor,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Room ID',
                  contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              // keyboardAppearance: Brightness.dark,
              cursorColor: Colors.white,
              controller: nameController,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              keyboardType: TextInputType.name,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  // fillColor: Colors.grey.withOpacity(0.2),
                  fillColor: footerColor,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Name',
                  contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8)),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(onPressed: () {}, buttontext: 'Join'),
          ],
        ),
      ),
    );
  }
}
