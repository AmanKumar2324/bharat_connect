import 'dart:math';

import 'package:bharat_connect/resources/jitsi_meet_methods.dart';
import 'package:flutter/material.dart';

import '../widgets/home_meeting_button.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({super.key});

  @override
  State<MeetingScreen> createState() => _HistoryMeetingScreenState();
}

class _HistoryMeetingScreenState extends State<MeetingScreen> {
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/join-meeting');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButtonWidget(
                onPressed: createNewMeeting,
                icon: Icons.videocam,
                text: 'New Meeting'),
            HomeMeetingButtonWidget(
                onPressed: () => joinMeeting(context),
                icon: Icons.add_box_rounded,
                text: 'Join Meeting'),
            HomeMeetingButtonWidget(
                onPressed: () {}, icon: Icons.calendar_today, text: 'Schedule'),
            HomeMeetingButtonWidget(
                onPressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: 'Share Screen')
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/Join meeting with just a click!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
