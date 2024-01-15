import 'package:bharat_connect/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Login')),
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or Join a meet',
            style: TextStyle(fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 38),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          CustomButton(onPressed: (){},
            buttontext: 'Google Sign In P',
          ),
        ],
      ),
    ));
  }
}
