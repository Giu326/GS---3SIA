import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; 
import 'package:humor_app/screens/tips_screen.dart';
import 'package:humor_app/screens/home_screen.dart';
import 'package:humor_app/screens/diario_screen.dart';
import 'package:humor_app/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoodTrack',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'sans-serif',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/chart': (context) => const MoodJournalScreen(),
        '/tips': (context) => const TipsScreen(),
      },
    );
  }
}
