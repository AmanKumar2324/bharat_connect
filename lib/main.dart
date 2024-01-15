import 'package:bharat_connect/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Colors.black,
              onPrimary: Colors.white,
              secondary: Colors.grey,
              onSecondary: Colors.white,
              error: Colors.red,
              onError: Colors.yellow,
              background: Colors.black,
              onBackground: Colors.grey,
              surface: Colors.blue,
              onSurface: Colors.white)),
      debugShowCheckedModeBanner: false,
      title: 'Bharat Connect',
      routes: {
        '/login': (context) => const LoginScren(),
      },
      home: const LoginScren(),
    );
  }
}
