import 'package:bharat_connect/resources/auth_methods.dart';
import 'package:bharat_connect/screens/home_screen.dart';
import 'package:bharat_connect/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/home': (context) => const HomeScreen(),
      },
      home: StreamBuilder(
        stream: AuthMethods().authChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          return const LoginScren();
        },
      ),
    );
  }
}
