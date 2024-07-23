import 'package:bharat_connect/resources/auth_methods.dart';
import 'package:bharat_connect/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  final AuthMethods _autmethods = AuthMethods();
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
            padding: const EdgeInsets.symmetric(vertical: 38),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          CustomButton(
            onPressed: () async {
              bool res = await _autmethods.signInWithGoogle(context);
              // if (res) {
              //   Navigator.pushReplacement(context, MaterialPageRoute(
              //     builder: (context) {
              //       return HomeScreen();
              //     },
              //   ));
              // } else {
              //   showSnackBar(context, 'Some error occured');
              // }
            },
            buttontext: 'Google Sign In',
          ),
        ],
      ),
    ));
  }
}
