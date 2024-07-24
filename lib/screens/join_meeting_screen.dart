import 'package:bharat_connect/resources/auth_methods.dart';
import 'package:bharat_connect/resources/jitsi_meet_methods.dart';
import 'package:bharat_connect/utils/colors.dart';
import 'package:bharat_connect/widgets/meeting_options.dart';
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
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  bool isAudioMuted = false;
  bool isVideoMuted = false;

  @override
  void initState() {
    meetingController = TextEditingController();
    nameController = TextEditingController(text: _authMethods.user.displayName);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    meetingController.dispose();
    nameController.dispose();
  }

  _joinMeeting() {
    _jitsiMeetMethods.createMeeting(
      roomName: meetingController.text,
      isAudioMuted: isAudioMuted,
      isVideoMuted: isVideoMuted,
      userName: nameController.text,
    );
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
              cursorColor: Colors.white,
              controller: nameController,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
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
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                // borderRadius: BorderRadius.circular(25),
                border: Border.all(color: backgroundColor, width: 2),
              ),
              child: InkWell(
                child: Center(
                  child: Text(
                    'Join',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: _joinMeeting,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MeetingOptionsWidget(
                text: 'Turn off my mic',
                isMute: isAudioMuted,
                onChange: onAudioMuted),
            SizedBox(
              height: 10,
            ),
            MeetingOptionsWidget(
                text: 'Turn off my video',
                isMute: isVideoMuted,
                onChange: onVideoMuted),
          ],
        ),
      ),
    );
  }

  onAudioMuted(bool val) {
    setState(() {
      isAudioMuted = val;
    });
  }

  onVideoMuted(bool val) {
    setState(() {
      isVideoMuted = val;
    });
  }
}
